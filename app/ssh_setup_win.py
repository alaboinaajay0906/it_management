import os
import sys
import subprocess
import paramiko
from pathlib import Path

def generate_ssh_key(key_path):
    print("[INFO] Checking if SSH key exists...")
    if not key_path.exists():
        print("[INFO] Generating new SSH key...")
        subprocess.run(["ssh-keygen", "-t", "rsa", "-b", "4096", "-f", str(key_path), "-N", ""], check=True)
        key_path.chmod(0o600)
        key_path.with_suffix('.pub').chmod(0o644)
    else:
        print("[INFO] SSH key already exists.")

def copy_ssh_key(peer_host, peer_user, peer_pass, pub_key_path):
    print(f"[INFO] Connecting to {peer_user}@{peer_host} to copy SSH key...")

    # Read public key
    with open(pub_key_path, 'r') as f:
        pub_key_content = f.read().strip()

    # Connect using paramiko
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    
    try:
        ssh.connect(peer_host, username=peer_user, password=peer_pass)
        ssh.exec_command('mkdir -p ~/.ssh && chmod 700 ~/.ssh')
        cmd = f'echo "{pub_key_content}" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys'
        ssh.exec_command(cmd)
        print("[SUCCESS] Public key copied to remote server.")
    except Exception as e:
        print(f"[ERROR] SSH connection failed: {e}")
        sys.exit(1)
    finally:
        ssh.close()

def add_known_host(peer_host):
    known_hosts = Path.home() / ".ssh" / "known_hosts"
    known_hosts.parent.mkdir(parents=True, exist_ok=True)
    try:
        print(f"[INFO] Adding {peer_host} to known_hosts...")
        result = subprocess.run(["ssh-keyscan", "-H", peer_host], capture_output=True, text=True)
        if result.returncode == 0:
            with open(known_hosts, 'a') as f:
                f.write(result.stdout)
        else:
            print("[WARNING] ssh-keyscan failed or no output.")
    except Exception as e:
        print(f"[WARNING] Could not scan host key: {e}")

def main():
    if len(sys.argv) != 4:
        print(f"Usage: {sys.argv[0]} <peer_ip_or_hostname> <ssh_username> <ssh_password>")
        sys.exit(1)

    peer_host = sys.argv[1]
    peer_user = sys.argv[2]
    peer_pass = sys.argv[3]

    ssh_dir = Path.home() / ".ssh"
    key_path = ssh_dir / "id_rsa"
    pub_key_path = key_path.with_suffix('.pub')

    ssh_dir.mkdir(parents=True, exist_ok=True)
    ssh_dir.chmod(0o700)

    generate_ssh_key(key_path)
    copy_ssh_key(peer_host, peer_user, peer_pass, pub_key_path)
    add_known_host(peer_host)

    print(f"[DONE] You can now SSH into {peer_user}@{peer_host} without password.")

if __name__ == "__main__":
    main()
