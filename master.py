import subprocess
import json
import platform
from datetime import datetime
import socket
from app import create_app, db
from app.models import Server, HealthCheck
from datetime import datetime, timedelta, timezone

# Initialize app context
app = create_app()
app.app_context().push()

# Load status_check.json
with open('appsettings.json') as f:
    port_config = json.load(f)
    # print(port_config)

# function to check a specific port
def is_port_open(ip, port):
    try:
        with socket.create_connection((ip, port), timeout=30):
            return True
    except:
        return False
    
# Ping function which platform independent which will work when ping is executing on both windows or linux
# def ping_host(ip, os_name=None):
#     try:
#         # Use system's actual OS if os_name is not provided
#         if not os_name:
#             os_name = platform.system()

#         os_clean = os_name.strip().lower()
#         param = "-n" if os_clean == "windows" else "-c"
#         command = ["ping", param, "1", ip]

#         result = subprocess.run(command, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
#         return result.returncode == 0
#     except Exception as e:
#         print(f"[ERROR] Ping failed for {ip}: {e}")
#         return False

# # Ping function   
def ping_host(ip):
    try:
        # Linux uses '-c' to specify number of echo requests
        command = ["/usr/bin/ping", "-c", "1", "-W", "2", ip]
        result = subprocess.run(command, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return result.returncode == 0
    except Exception as e:
        print(f"[ERROR] Ping failed for {ip}: {e}")
        return False
    
# ping and port status update function for a single server
def update_device_status(server):
    check_flag = []
    if server.status == "Maintenance":
        return

    ip = server.ip_address.strip()
    service_name = server.purpose.strip().upper()
    is_up = ping_host(ip)

    if is_up:
        server.status = "Up"
        # check_flag.append('good')
    else:
        server.status = "Down"
        # check_flag.append('bad')
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
    
    # Port check & update
    for port in ports:
        port_column = f'port_{port}'
        if hasattr(health_check, port_column):
            if is_port_open(ip, port):
                status = "Open"
                # check_flag.append('good') 
            else:
                 status = "Closed"
                #  check_flag.append('bad')
            setattr(health_check, port_column, status)
            print(f"[INFO] Port {port}: {status}")

    # if all(flag == "good" for flag in check_flag):
    #     health_check.healthcheck = 'Healthy'
    #     print("\033[92m[INFO] Server is healthy\033[0m")
    # else:
    #     health_check.healthcheck = 'Faulty'
    #     print("\033[91m[INFO] Server is Faulty\033[0m")
    # Update last_checked in UTC
    # ist = pytz.timezone("Asia/Kolkata")
    now_utc = datetime.now(timezone.utc)
    health_check.last_checked = now_utc

# perform health check for all servers
def update_all_servers():
    servers = Server.query.all()
    for server in servers:
        print(f"\n[INFO] Checking server: {server.name} ({server.ip_address})")
        update_device_status(server)
    db.session.commit()

# Run function
if __name__ == "__main__":
    print("\n[INFO] Starting network health check for all registered servers...")
    update_all_servers()
    print("\n[INFO] Starting System health check for all registered servers...")
    subprocess.run(["python3", "health_check.py"], check=True)
    print("\n[INFO] Sending notifications for unhealthy servers...")
    subprocess.run(["python3", "notification.py"], check=True)
