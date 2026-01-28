# XDG directory
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# cargo data file
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# go data path
export GOPATH="$XDG_DATA_HOME"/go

# libice
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority

# npmrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

# nuget
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages

# Java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# Ansible
export ANSIBLE_HOME="$XDG_DATA_HOME"/ansible
