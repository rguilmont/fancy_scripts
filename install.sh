#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root"
    exit 1
fi

# Destination directory
DEST_DIR="/usr/bin"

# Install bababoy script
curl -s  "$BABABOY_SCRIPT_CONTENT" > "$DEST_DIR/bababoy"
chmod +x "$DEST_DIR/bababoy"

echo "bababoy has been installed to $DEST_DIR"