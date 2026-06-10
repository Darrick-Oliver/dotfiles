# Claude Code

## Install

```sh
./install.sh
```

This deep-merges `settings-base.json` + `~/.claude/settings-private.json` into
`~/.claude/settings.json` and symlinks every script under `hooks/` into
`~/.claude/hooks/`.

## Prerequisites

- **`jq`** — required by every hook for parsing tool input.
- **[`rtk`](https://github.com/rtk-ai/rtk)** — token-compression proxy. Install with:

  ```sh
  curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
  ```

  Drops the binary at `~/.local/bin/rtk`. The `rtk-rewrite.sh` hook tracked here
  is the same one `rtk init -g` would write — just version-controlled instead of
  generated, so it survives reinstalls.

## Layout

| Path | Purpose | Tracked? |
|------|---------|----------|
| `settings-base.json` | Generic preferences, permissions, and the upstream rtk hook | yes |
| `~/.claude/settings-private.json` | Machine-specific config | no |
| `~/.claude/hooks/amazon-rtk-rewrite.sh` | Amazon-internal `brazil-build` rewriter (sister hook) | no |

