# Dotfiles

## Contents

| Config | Description | Install Path |
|--------|-------------|--------------|
| [AeroSpace](aerospace/) | Tiling window manager | `~/.aerospace.toml` |
| [Karabiner](karabiner/) | Keyboard remapping | `~/.config/karabiner/karabiner.json` |
| [Ghostty](ghostty/) | Terminal emulator | `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` |
| [Neovim](nvim/) | Editor (LazyVim) | `~/.config/nvim/` |
| [Claude Code](claude/) | CLI assistant settings | `~/.claude/settings.local.json` |
| [tmux](tmux/) | Terminal multiplexer | `~/.tmux.conf` |

## Installation

Clone and symlink:

```sh
git clone https://github.com/Darrick-Oliver/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

Then create symlinks for whichever configs you need:

```sh
# macOS
ln -sf $(pwd)/aerospace/aerospace.toml ~/.aerospace.toml
ln -sf $(pwd)/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
ln -sf $(pwd)/ghostty/config.ghostty ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty

# Shared
ln -sf $(pwd)/claude/settings.local.json ~/.claude/settings.local.json
ln -sf $(pwd)/nvim ~/.config/nvim
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf
```

### tmux plugins

Install [TPM](https://github.com/tmux-plugins/tpm), then press `prefix + I` inside tmux to install the declared plugins:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

