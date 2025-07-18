import paramiko
import subprocess
from datetime import datetime
from app.models import db, Server, health_check
import getpass

user = getpass.getuser()
PRIVATE_KEY = f"/home/{user}/.ssh/id_rsa"

# funtion to setup key based auth using ssh_seup.sh
def setup_ssh_key(ip, username, password):
    try:
        print(f"[INFO] Setting up SSH key for {ip}...")
        result = subprocess.run(
            ['./ssh_setup.sh', ip, username, password],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        if result.returncode == 0:
            print(f"[INFO] SSH setup completed for {ip}")
        else:
            print(f"[ERROR] SSH setup failed for {ip}: {result.stderr.decode()}")
    except Exception as e:
        print(f"[ERROR] SSH setup script failed: {e}")

def update_storage_for_device(ip):
    # Fetch server record
    device = Server.query.filter_by(ip_address=ip).first()
    if not device:
        print(f"[ERROR] No server found with IP {ip}")
        return

    username = getattr(device, 'name', None)
    password = getattr(device, 'machine_psw', None)

    if not username or not password:
        print(f"[ERROR] Missing SSH credentials for {ip}")
        return

    try:
        key = paramiko.RSAKey.from_private_key_file(PRIVATE_KEY)
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

        try:
            client.connect(ip, username=username, pkey=key, timeout=5)
        except paramiko.ssh_exception.AuthenticationException:
            print(f"[AUTH FAIL] Trying SSH setup for {ip}")
            setup_ssh_key(ip, username, password)
            client.connect(ip, username=username, pkey=key, timeout=5)

        # Get storage info
        stdin, stdout, stderr = client.exec_command("df -h / | tail -1 | awk '{print $3 \" / \" $2}'")
        output = stdout.read().decode().strip()
        client.close()

        #  Update DB
        if output:
            hc = health_check.query.filter_by(server_id=device.id).first()
            if not hc:
                hc = health_check(server_id=device.id)
                db.session.add(hc)

            hc.storage = output
            hc.last_checked = datetime.now()
            db.session.commit()
            print(f"[SUCCESS] Storage updated for {ip}: {output}")
        else:
            print(f"[ERROR] No storage output from {ip}")

    except Exception as e:
        print(f"[ERROR] Failed to check storage on {ip}: {e}")
