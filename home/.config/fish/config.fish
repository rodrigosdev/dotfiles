# Disable greeting
set fish_greeting

# Initialize starship prompt
starship init fish | source

# Set Catppuccin Macchiato as the default theme
fish_config theme choose catppuccin-macchiato

# Add local bin to PATH
set -gx PATH $HOME/.local/bin $PATH
