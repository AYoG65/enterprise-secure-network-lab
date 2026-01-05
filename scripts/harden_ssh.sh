#!/bin/bash
set -euo pipefail

SSH_CONFIG="/etc/ssh/sshd_config"
cp $SSH_CONFIG ${SSH_CONFIG}.bak.$(date +%F)

sed -i 's/#Port 22/Port 2222/' $SSH_CONFIG
sed -i 's/#PermitRootLogin.*/PermitRootLogin no/' $SSH_CONFIG
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' $SSH_CONFIG
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' $SSH_CONFIG

systemctl restart ssh
