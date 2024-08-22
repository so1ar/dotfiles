# To use degit tool by default to install modules
zstyle ':zim:zmodule' use 'degit'

# proper cache file location
zstyle ':zim:completion' dumpfile ${XDG_CACHE_HOME}/zsh/dumpfile
zstyle ':completion::complete:*' cache-path ${XDG_CACHE_HOME}/zsh/zcompcache

# Set where the directory used by Zim will be located
ZIM_HOME=${XDG_DATA_HOME:-${HOME}/.local/share}/zim

# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi

# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# Always starting with insert mode for each command line
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

# Initialize modules.
source ${ZIM_HOME}/init.zsh

# Always starting with insert mode for each command line
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

# aliases
source ${ZDOTDIR}/alias.zsh

# foot shell intergration
if [ "${TERM}" = "foot" ]; then
  source ${ZDOTDIR}/foot.zsh
fi

# vim: ts=2 sts=2 sw=2 et
