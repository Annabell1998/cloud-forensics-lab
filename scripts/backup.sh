#!/bin/bash
mkdir -p /backups
while true
do
  TIMESTAMP=$(date +%Y%m%d_%H%M%S)
  cp -r /evidence /backups/backup_$TIMESTAMP
  echo "$(date) - Snapshot created: backup_$TIMESTAMP" >> /backups/backup.log
  sleep 30
done