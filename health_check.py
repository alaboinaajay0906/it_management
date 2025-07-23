import json
import paramiko
import wmi
from app import create_app, db
from app.models import Server, HealthCheck

# Initialize app context
app = create_app()
app.app_context().push()
# load status_check.json
def load_config():
    with open('appsettings.json') as f:
        return json.load(f).get("default", {})
    
# function to check linux storage 
def check_linux_storage(ip, username, password):
    try:
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        ssh.connect(ip, username=username, password=password, timeout=10)
        stdin, stdout, stderr = ssh.exec_command("df -h / | awk 'NR==2 {print $5}'")
        output = stdout.read().decode().strip()
        ssh.close()
        if output is None:
            return None
        return int(output.strip('%'))

    except Exception as e:
        print(f"[ERROR] Linux Storage check failed for {ip}: {e}")
        return "Error"

# function to check windows storage 
def check_windows_storage(ip, username, password):
    """
    Connects to a remote Windows machine via WMI and checks storage usage of C: drive.

    Args:
        ip (str): IP address of the target machine.
        username (str): Username (can be in 'ip\\user' or 'domain\\user' format).
        password (str): Password for the user.

    Returns:
        int: Percentage of used space on C: drive, or None if connection fails.
    """
    try:
            conn = wmi.WMI(computer=ip, user=username, password=password)
            for disk in conn.Win32_LogicalDisk(DriveType=3):  # DriveType=3 = local disk
                if disk.DeviceID == "C:":
                    total_gb = int(disk.Size) // (1024**3)
                    free_gb = int(disk.FreeSpace) // (1024**3)
                    
                    if total_gb == 0:
                        print(f"[WARN] Total size is 0 on {ip}")
                        return None
                    
                    used_percent = int((total_gb - free_gb) * 100 / total_gb)
                    return used_percent
    except Exception as e:
            print(f"[ERROR] Could not connect to {ip}: {e}")
            return None

# health check
def run_health_check():
    config = load_config()
    if not config.get("storage"):
        print("[INFO] Storage check disabled in config.")
        return

    servers = Server.query.all()
    for server in servers:
        ip = server.ip_address
        username = server.name
        password = server.machine_psw
        os_type = server.os

        print(f"[INFO] Checking storage for {server.name} ({ip})")

        if "Windows" in os_type:
            storage_info = check_windows_storage(ip, username, password)
        else:
            storage_info = check_linux_storage(ip, username, password)

          # skip the ip if storage_info is none or any error
        if not storage_info or 'error' in str(storage_info).strip().lower():
            continue

          # Update the storage in db
        hc = HealthCheck.query.filter_by(server_id=server.id).first()
        if not hc:
            hc = HealthCheck(server_id=server.id)
            db.session.add(hc)
        hc.storage = storage_info
    try:
        db.session.commit()
        print(f"[SUCCESS] Updated storage for {server.name}: {storage_info}%")
    except Exception as e:
        db.session.rollback()
        print(f"[DB ERROR] Failed to update storage for {server.name}: {e}")

if __name__ == "__main__":
    run_health_check()


# NOTES:
'''What Actually Returns the Storage Data?
The WMI (Windows Management Instrumentation) service is responsible for accessing system data — like storage usage, CPU, memory, etc.

Internally, WMI uses DCOM (Distributed COM) over RPC.

After the initial handshake on 135, the actual data request is routed to a dynamic TCP port (from the range 49152–65535 by default) assigned to the DCOM service handling the WMI request.

Example:
Your Python wmi.WMI() call → connects to target 192.168.60.122 on port 135.

RPC Endpoint Mapper says: “For WMI, talk to me on port 52834.”

Your client then connects to 52834, authenticates, and fetches Win32_LogicalDisk info.'''