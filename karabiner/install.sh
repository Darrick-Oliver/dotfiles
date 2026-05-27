#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.config/karabiner
ln -sf "$SCRIPT_DIR/karabiner.json" ~/.config/karabiner/karabiner.json
echo "Linked karabiner.json"
