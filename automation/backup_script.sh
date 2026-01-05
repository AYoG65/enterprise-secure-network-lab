#!/bin/bash
set -euo pipefail

BACKUP_DIR="/var/backups/system"
mkdir -p $BACKUP_DIR
tar czf $BACKUP_DIR/etc_backup_$(date +%F).tar.gz /etc
find $BACKUP_DIR -type f -mtime +7 -delete
