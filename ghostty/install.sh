#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"

mkdir -p "$TARGET_DIR"
ln -sf "$SCRIPT_DIR/config.ghostty" "$TARGET_DIR/config.ghostty"
echo "Linked config.ghostty"
