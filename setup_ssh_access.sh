#!/bin/bash
set -euo pipefail

# Usage: ./ssh_setup.sh <IP_or_Hostname> <Username> <Password>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <peer_ip_or_hostname> <ssh_username> <ssh_password>"
    exit 1
fi

PEER_HOST="$1"
PEER_USER="$2"
PEER_PASS="$3"

KEY_PATH="${HOME}/.ssh/id_rsa"
PUB_KEY_PATH="${KEY_PATH}.pub"

# Step 1: Ensure .ssh directory exists
if [ ! -d ~/.ssh ]; then
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
fi

# Step 2: Generate SSH key if it doesn't exist
if [ ! -f "$KEY_PATH" ]; then
    ssh-keygen -t rsa -b 4096 -f "$KEY_PATH" -N ""
    chmod 600 "$KEY_PATH"
    chmod 644 "$PUB_KEY_PATH"
fi

# Step 3: Copy public key using sshpass
echo "[INFO] Copying SSH key to $PEER_USER@$PEER_HOST..."
if ! command -v sshpass &> /dev/null; then
    echo "[ERROR] 'sshpass' not found. Install it using your package manager (e.g. apt install sshpass)."
    exit 1
fi

sshpass -p "$PEER_PASS" ssh-copy-id -i "$PUB_KEY_PATH" "$PEER_USER@$PEER_HOST"

# Step 4: Add to known_hosts to avoid future prompts
echo "[INFO] Adding $PEER_HOST to known_hosts..."
ssh-keyscan -H "$PEER_HOST" >> ~/.ssh/known_hosts 2>/dev/null

echo "[SUCCESS] SSH key setup complete. You can now SSH into $PEER_USER@$PEER_HOST without password."
