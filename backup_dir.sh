#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1
DATE=$(date +%Y-%m-%d)
BACKUP_DIR=backups

mkdir -p $BACKUP_DIR

# Create backup
tar -czf $BACKUP_DIR/backup_$(basename $DIR)_$DATE.tar.gz $DIR

echo "Backup of $DIR saved in $BACKUP_DIR"
