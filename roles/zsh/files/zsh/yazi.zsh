function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

if [ -z "${ZELLIJ}" ]; then
  alias yazi="y"
else
  # Deceive Yazi into thinking you're running in kitty,
  # forcing it fallback to Überzug++ or Chafa
  alias y="TERM=xterm-kitty y"
  alias yazi="TERM=xterm-kitty y"
fi

# vim: ts=2 sts=2 sw=2 et
