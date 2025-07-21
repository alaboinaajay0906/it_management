import subprocess
import json
import platform
from datetime import datetime
import socket
import pytz
import subprocess
from app import db, create_app
from app.models import Server, HealthCheck

# Initialize app context
app = create_app()
app.app_context().push()

# Load status_check.json
with open('status_check.json') as f:
    port_config = json.load(f)
    # print(port_config)

# function to check a specific port
def is_port_open(ip, port):
    try:
        with socket.create_connection((ip, port), timeout=1):
            return True
    except:
        return False
# Ping function
def ping_host(ip):
    try:
        param = "-n" if platform.system().lower() == "windows" else "-c"
        command = ["ping", param, "1", ip]
        result = subprocess.run(command, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return result.returncode == 0
    except Exception:
        return False
# ping and port status update function for a single server
def update_device_status(server):
    if server.status == "Maintenance":
        return

    ip = server.ip_address.strip()
    service_name = server.purpose.strip().upper()
    is_up = ping_host(ip)

    server.status = "Up" if is_up else "Down"
    print(f"[INFO] Ping status: {server.status}")

    # Get ports to check for this service
    service_config = port_config.get(service_name, {})
    ports_dict = service_config.get("ports", {})
    ports = [int(port) for port, enabled in ports_dict.items() if enabled]
    # Debugging
    # print(f"[DEBUG] Current service name: {service_name}")
    # print(f"[DEBUG] Service config from port_config: {service_config}")
    # print(f"[DEBUG] Ports dictionary: {ports_dict}")

    # Get or create health check row
    health_check = HealthCheck.query.filter_by(server_id=server.id).first()
    if not health_check:
        health_check = HealthCheck(server_id=server.id)
        db.session.add(health_check)

    # Update last_checked in IST
    ist = pytz.timezone("Asia/Kolkata")
    health_check.last_checked = datetime.now(ist)

    # Port check & update
    for port in ports:
        port_column = f'port_{port}'
        if hasattr(health_check, port_column):
            status = "Open" if is_port_open(ip, port) else "Closed"
            setattr(health_check, port_column, status)
            print(f"[INFO] Port {port}: {status}")

# perform health check for all servers
def update_all_servers():
    servers = Server.query.all()
    for server in servers:
        print(f"\n[INFO] Checking server: {server.name} ({server.ip_address})")
        update_device_status(server)
    db.session.commit()

# Run function
if __name__ == "__main__":
    print("\n[INFO] Starting network health check for all registered servers...\n")
    update_all_servers()
    print("\n[INFO] Network health check completed for all servers.\n")