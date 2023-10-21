if test -z "$XDG_RUNTIME_DIR"; then
    export XDG_RUNTIME_DIR=$(mktemp -d)
fi

[ -f "/etc/zsh/zshenv" ] && . "/etc/zsh/zshenv"

[ "$(tty)" = "/dev/tty1" ] && exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
