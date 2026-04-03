# Rodrigo's Dotfiles

My personal configuration files, managed with a `home/.config` structure that mirrors `~/.config`.

### Fish Shell

Minimal [fish](https://fishshell.com/) configuration with [fisher](https://github.com/jorgebucaran/fisher) for plugin management.

**Plugins:**

- [plugin-git](https://github.com/jhillyerd/plugin-git) - Git aliases and functions
- [nvm.fish](https://github.com/jorgebucaran/nvm.fish) - Node version manager
- [catppuccin/fish](https://github.com/catppuccin/fish) - Catppuccin Macchiato theme

### Starship

[Starship](https://starship.rs/) cross-shell prompt using the [Catppuccin Powerline Preset](https://starship.rs/presets/catppuccin-powerline) with language indicators for Node.js, Rust, Go, Python, and more.

### Git

Global git config with:

- SSH commit signing
- Rebase on pull, `rerere`, and `fsmonitor` enabled
- Custom aliases (`fomo`, `lg`, `nuke`)
- Conditional config for work repositories (`~/Code/work/`)

### Ghostty

[Ghostty](https://ghostty.org/) terminal configuration with Catppuccin Macchiato theme, GeistMono Nerd Font, and macOS-specific tweaks.

## See Also

- [rodrigosdev/vscode-settings](https://github.com/rodrigosdev/vscode-settings) - My VS Code settings
