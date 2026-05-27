# Dotfiles

## Contents

| Config | Description | Install Path |
|--------|-------------|--------------|
| [AeroSpace](aerospace/) | Tiling window manager | `~/.aerospace.toml` |
| [Karabiner](karabiner/) | Keyboard remapping | `~/.config/karabiner/karabiner.json` |
| [Ghostty](ghostty/) | Terminal emulator | `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` |
| [Neovim](nvim/) | Editor (LazyVim) | `~/.config/nvim/` |
| [Claude Code](claude/) | CLI assistant settings | `~/.claude/settings.json` |
| [tmux](tmux/) | Terminal multiplexer | `~/.tmux.conf` |

## Installation

```sh
git clone https://github.com/Darrick-Oliver/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

Or install individual modules:

```sh
./claude/install.sh
./nvim/install.sh
```

### Claude Code

The claude module uses a two-file merge approach:

- `claude/settings-base.json` — generic preferences and permissions (committed)
- `~/.claude/settings-private.json` — machine-specific config (not tracked)

Running `claude/install.sh` deep-merges both into `~/.claude/settings.json`. If no private file exists, it uses base only.

### tmux

TPM is installed automatically by `tmux/install.sh`. Press `prefix + I` inside tmux to install the declared plugins.
