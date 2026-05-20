# Dotfiles

## Contents

| Config | Description | Install Path |
|--------|-------------|--------------|
| [AeroSpace](aerospace/) | Tiling window manager | `~/.aerospace.toml` |
| [Karabiner](karabiner/) | Keyboard remapping | `~/.config/karabiner/karabiner.json` |
| [Ghostty](ghostty/) | Terminal emulator | `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` |

## Setup

### AeroSpace

```sh
ln -sf $(pwd)/aerospace/aerospace.toml ~/.aerospace.toml
```

### Karabiner

```sh
ln -sf $(pwd)/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
```

### Ghostty

```sh
ln -sf $(pwd)/ghostty/config.ghostty ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty
```

