import subprocess
from datetime import datetime
from app import db, create_app  # Ensure your Flask app factory is imported
from app.models import Server   # Your SQLAlchemy Server model

# Initialize app context
app = create_app()
app.app_context().push()

# Default ports to check
DEFAULT_PORTS = {
    22: "SSH",
    80: "HTTP",
    5432: "PostgreSQL"
}

# TCP port check using bash and timeout
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

# Ping device
def ping_device(ip, count=1, timeout=2):
    try:
        result = subprocess.run(
            ['ping', '-c', str(count), ip],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        return result.returncode == 0
    except Exception as e:
        print(f"Ping error: {e}")
        return False

# Update status and port info for one device
def update_device_status(ip):
    device = Server.query.filter_by(ip_address=ip).first()

    # Skip if server is in Maintenance mode
    if device and device.status.lower() == 'maintenance':
        print(f"[INFO] Skipping {ip} (Maintenance mode)")
        return

    ping_up = ping_device(ip)
    status = 'Up' if ping_up else 'Down'

    if ping_up:
        port_statuses = {
            port: 'Open' if check_tcp_port(ip, port) else 'Closed'
            for port in DEFAULT_PORTS
        }
    else:
        port_statuses = {port: 'Unknown' for port in DEFAULT_PORTS}

    if not device:
        # Create if not exists
        device = Server(ip_address=ip)

    device.status = status
    device.port_22 = port_statuses.get(22, 'Unknown')
    device.port_80 = port_statuses.get(80, 'Unknown')
    device.port_5432 = port_statuses.get(5432, 'Unknown')
    device.last_checked = datetime.utcnow()

    db.session.add(device)
    db.session.commit()
    print(f"[UPDATED] {ip} → {status}")

# Run update for all servers
def update_all_servers():
    servers = Server.query.all()
    for server in servers:
        update_device_status(server.ip_address)

if __name__ == "__main__":
    update_all_servers()
