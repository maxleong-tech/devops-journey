#!/usr/bin/env bash

echo "==Server Health Check=="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Disk Usage"
df -h /
echo "memory usage"
free -h
