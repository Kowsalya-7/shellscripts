#!/bin/bash

disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

log_file="disk_report.log"

timestamp=$(date '+%Y-%m-%d %H:%M:%S')


if [ "$disk_usage" -gt 80 ]; then
    echo "WARNING: Disk usage is at ${disk_usage}%"
    echo "$timestamp - WARNING: Disk usage is at ${disk_usage}%" >> "$log_file"
else
    echo "Disk usage normal (${disk_usage}%)"
    echo "$timestamp - Disk usage normal (${disk_usage}%)" >> "$log_file"
fi
