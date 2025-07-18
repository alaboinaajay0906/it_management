import subprocess
import json
import platform
from datetime import datetime
from app import db, create_app
from app.models import Server, health_check

app = create_app()
app.app_context().push()

CONFIG_FILE = 'status_check.json'

with open(CONFIG_FILE, 'r') as f:
    PORT_CONFIG = json.load(f)


def ping_device(ip, count=1, timeout=2):
    try:
        param = '-n' if platform.system().lower() == 'windows' else '-c'
        result = subprocess.run(
            ['ping', param, str(count), ip],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        return result.returncode == 0
    except Exception as e:
        print(f"[Ping Error] {ip}: {e}")
        return False


def check_tcp_port(ip, port):
    try:
        result = subprocess.run(
            ['timeout', '5', 'bash', '-c', f'</dev/tcp/{ip}/{port}'],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        return result.returncode == 0
    except Exception:
        return False


def get_ports_for_service(service_name):
    ports = set()
    if service_name:
        service_ports = PORT_CONFIG.get(service_name, {})
        ports.update(int(k[4:]) for k, v in service_ports.items() if v)
    return sorted(ports)


def get_disk_usage(ip):
    try:
        # Check OS type with a basic SSH command (you can replace this with key-based auth)
        cmd = f"ssh {ip} df -h / | tail -1 | awk '{{print $3 \" / \" $2}}'"
        result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=10)
        output = result.stdout.decode().strip()
        if result.returncode != 0 or not output:
            return "Unavailable"
        return output
    except Exception as e:
        print(f"[Storage Error] {ip}: {e}")
        return "Error"


def update_device_status(ip):
    device = Server.query.filter_by(ip_address=ip).first()
    if not device:
        print(f"[SKIP] No Server found for IP {ip}")
        return

    if device.status and device.status.lower() == 'maintenance':
        print(f"[INFO] Skipping {ip} (Maintenance mode)")
        return

    service = device.purpose or ''
    ping_enabled = PORT_CONFIG.get("default", {}).get("status", False)
    storage_enabled = PORT_CONFIG.get("default", {}).get("storage", False)

    ping_up = ping_device(ip) if ping_enabled else False
    device.status = 'Up' if ping_up else 'Down'
    db.session.add(device)

    health = health_check.query.filter_by(server_id=device.id).first()
    if not health:
        print(f"[ERROR] No health_check row found for server_id={device.id}")
        return

    # Handle storage check
    if storage_enabled:
        storage_info = get_disk_usage(ip) if ping_up else "Unknown"
        health.storage = storage_info

    # Handle port checks based on service
    ports_to_check = get_ports_for_service(service)
    for port in ports_to_check:
        col_name = f'port_{port}'
        if hasattr(health, col_name):
            setattr(health, col_name, 'Open' if (ping_up and check_tcp_port(ip, port)) else 'Closed' if ping_up else 'Unknown')
        else:
            print(f"[WARN] Column '{col_name}' not found in health_check table")

    health.last_checked = datetime.utcnow()
    db.session.add(health)
    db.session.commit()
    print(f"[UPDATED] {ip} → Status: {device.status}, Storage: {health.storage}, Ports: {ports_to_check}")


def update_all_servers():
    servers = Server.query.all()
    for server in servers:
        update_device_status(server.ip_address)


if __name__ == "__main__":
    update_all_servers()
