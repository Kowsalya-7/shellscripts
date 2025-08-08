#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

PROCESS_NAME=$1
LOG_FILE="process_log.txt"

COUNT=$(ps aux | grep "$PROCESS_NAME" | grep -v grep | wc -l)

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo "$TIMESTAMP - $PROCESS_NAME processes running: $COUNT" >> $LOG_FILE


echo "Logged: $COUNT processes for '$PROCESS_NAME'"
