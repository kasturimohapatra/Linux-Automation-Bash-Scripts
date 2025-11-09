#!/bin/bash
# backup.sh - A simple system backup script

echo "Starting backup..."
tar -czf ~/backup_$(date +%Y%m%d).tar.gz /home/kasturi
echo "Backup complete! Saved in home directory."
