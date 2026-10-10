#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory"
    exit
fi

LOG_DIR=$1



if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

ARCHIVE_DIR="archive"

mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

if tar -czf "$ARCHIVE_DIR/$ARCHIVE_FILE" "$LOG_DIR"; then
    echo "Archive created successfully!"
    echo "$(date) - Created $ARCHIVE_FILE" >> "$ARCHIVE_DIR/archive.log"
else
    echo "Error: Failed to create archive."
    rm -f "$ARCHIVE_DIR/$ARCHIVE_FILE"
    exit 1
fi

echo "$(date) - Created $ARCHIVE_FILE" >> "$ARCHIVE_DIR/archive.log"

echo "Log directory: $LOG_DIR"