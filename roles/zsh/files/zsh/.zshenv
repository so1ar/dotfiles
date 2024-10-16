# zsh history file
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export HISTSIZE=100000
export SAVEHIST=80000
export HISTDUPE=erase

# vi mode timeout
export KEYTIMEOUT=5

# Set default editor to neovim
export EDITOR=/usr/bin/nvim

# Starship config file location
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/starship.toml

# Setting up fzf theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#3c3836,bg:#282828,spinner:#fb4934,hl:#cc241d \
--color=fg:#ebdbb2,header:#cc241d,info:#d3869b,pointer:#fb4934 \
--color=marker:#b4befe,fg+:#ebdbb2,prompt:#d3869b,hl+:#cc241d \
--color=selected-bg:#504945 \
--multi"

# Android home
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
