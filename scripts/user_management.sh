#!/bin/bash
set -euo pipefail

USERNAME="sysadmin"

id "$USERNAME" &>/dev/null || useradd -m -s /bin/bash $USERNAME
usermod -aG sudo $USERNAME
passwd -l root
