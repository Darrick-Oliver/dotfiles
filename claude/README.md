# Claude Code

My [Claude Code](https://claude.com/claude-code) setup. The `settings.local.json` here is symlinked to `~/.claude/settings.local.json` and holds my permission allow/deny/ask lists.

## Symlink

```sh
ln -sf $(pwd)/claude/settings.local.json ~/.claude/settings.local.json
```

Claude Code reads `settings.local.json` once at session start, so restart the session after editing.

## Tools I use alongside Claude Code

### oh-my-claudecode (OMC)

Multi-agent orchestration plugin — specialized agents, skills, and team modes.

- Repo: <https://github.com/Yeachan-Heo/oh-my-claudecode>
- Install inside Claude Code:
  ```
  /plugin marketplace add https://github.com/Yeachan-Heo/oh-my-claudecode
  /plugin install oh-my-claudecode
  ```

### rtk (Rust Token Killer)

CLI proxy that compresses command output before it hits the context window. Installs a `PreToolUse` hook that transparently rewrites Bash calls to `rtk ...`.

- Repo: <https://github.com/rtk-ai/rtk>
- After installing the binary, wire up the Claude Code hook:
  ```sh
  rtk init --global
  ```
- The `Bash(rtk *)` entry in `settings.local.json` is what keeps rewritten commands from prompting.
