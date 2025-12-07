#!/bin/bash

CONFIG_DIR="$HOME/.config/line-commander"
mkdir -p "$CONFIG_DIR"

if [[ ! -f "$CONFIG_DIR/table.json" ]]; then
    cp /usr/share/line-cmd/table.json "$CONFIG_DIR/table.json"
    echo "Default config created at $CONFIG_DIR/table.json"
fi
