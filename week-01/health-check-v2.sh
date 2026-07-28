#!/usr/bin/env bash

DISK_THRESHOLD=80
disk_used=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "=== Disk Health Check ==="
echo "Disk usage: ${disk_used}%"

if [ "$disk_used" -ge "$DISK_THRESHOLD" ]; then
  echo "WARNING: Disk usage is above ${DISK_THRESHOLD}%"
else
  echo "OK: Disk usage is healthy"
fi
