#!/usr/bin/env bash
# Merges settings-base.json and settings-private.json into ~/.claude/settings.json
# Run after editing either source file.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE="$SCRIPT_DIR/settings-base.json"
PRIVATE="$HOME/.claude/settings-private.json"
TARGET="$HOME/.claude/settings.json"

if [[ ! -f "$BASE" ]]; then
  echo "Error: $BASE not found" >&2
  exit 1
fi

if [[ ! -f "$PRIVATE" ]]; then
  echo "Warning: $PRIVATE not found, using base only" >&2
  cp "$BASE" "$TARGET"
  exit 0
fi

jq -s '
  def deepmerge:
    if (.[0] | type) == "object" and (.[1] | type) == "object" then
      .[0] as $a | .[1] as $b |
      ($a | keys_unsorted) + ($b | keys_unsorted) | unique |
      reduce .[] as $k ({}; . + {($k):
        if ($a[$k] == null) then $b[$k]
        elif ($b[$k] == null) then $a[$k]
        else [$a[$k], $b[$k]] | deepmerge
        end
      })
    elif (.[0] | type) == "array" and (.[1] | type) == "array" then
      .[0] + .[1]
    else
      .[1]
    end;
  [.[0], .[1]] | deepmerge
' "$BASE" "$PRIVATE" > "$TARGET"

echo "Merged settings written to $TARGET"
