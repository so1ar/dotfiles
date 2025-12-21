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

export BAT_THEME="gruvbox-dark"

export FZF_DEFAULT_OPTS=" \
 --color=bg:#282828,fg:#ebdbb2,hl:#d65d0e\
 --color=bg+:#504945,fg+:#ebdbb2,hl+:#fabd2f\
 --color=info:#83a598,border:#458588,prompt:#98971a\
 --color=pointer:#282828,marker:#fb4934,spinner:#fb4934,header:#cc241d\
 --multi\
 --preview='bat --color=always {}'"

# Android home
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
