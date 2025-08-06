# alias
# alias k='NVIM_APPNAME="nvim-kickstart" nvim'
alias p="paru"
alias la="ll -a"
alias ms="rm -f .SRCINFO && makepkg --printsrcinfo > .SRCINFO"
alias a="archive"
alias ua="unarchive"
alias lsa="lsarchive"
alias se="sudoedit"
alias fetch="fastfetch"
alias t="topgrade"
alias v="nvim"
alias nn="cd ~/Documents/notes/ && nvim index.md"
alias nv="cd ~/.config/nvim && nvim"
alias nd="cd ~/.config/dotfiles && nvim"
# wget
alias wget="wget --hsts-file="$XDG_DATA_HOME/wget-hsts""
# yarn
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

# zoxide
if (( $+commands[zoxide] )); then
    alias cd="z"
fi

# zellij
alias zj="zellij"
alias zls="zellij list-sessions"

alias adb="HOME="$XDG_DATA_HOME"/android adb"
