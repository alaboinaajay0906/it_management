import json
import paramiko
import platform
import subprocess
from app import create_app, db
from app.models import Server, HealthCheck
from smb.SMBConnection import SMBConnection  # For Windows check (optional)
import os

# Initialize app context
app = create_app()
app.app_context().push()
# load status_check.json
def load_config():
    with open('status_check.json') as f:
        return json.load(f).get("default", {})
    
# function to check linux storage check
def check_linux_storage(ip, username, password):
    try:
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        ssh.connect(ip, username=username, password=password, timeout=10)

        stdin, stdout, stderr = ssh.exec_command("df -h / | awk 'NR==2 {print $5}'")
        output = stdout.read().decode().strip()
        ssh.close()
        return output
    except Exception as e:
        print(f"[ERROR] Linux Storage check failed for {ip}: {e}")
        return "Error"
    
# function to check windows storage check
def check_windows_storage(ip, username, password):
    try:
        # Example using PowerShell remotely (ensure WinRM is configured on target)
        command = f"wmic /node:{ip} /user:{username} /password:{password} logicaldisk get size,freespace,caption"
        result = subprocess.run(command, capture_output=True, text=True, shell=True)
        if result.returncode == 0:
            return result.stdout.splitlines()[1].strip()
        else:
            raise Exception(result.stderr)
    except Exception as e:
        print(f"[ERROR] Windows Storage check failed for {ip}: {e}")
        return "Error"
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

            # Update or create HealthCheck
            hc = HealthCheck.query.filter_by(server_id=server.id).first()
            if not hc:
                hc = HealthCheck(server_id=server.id)
                db.session.add(hc)
            hc.storage = storage_info
        try:
            db.session.commit()
            print(f"[SUCCESS] Updated storage for {server.name}: {storage_info}")
        except Exception as e:
            db.session.rollback()
            print(f"[DB ERROR] Failed to update storage for {server.name}: {e}")

if __name__ == "__main__":
    run_health_check()
