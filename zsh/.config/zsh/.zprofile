[ -f "/etc/zsh/zshenv" ] && . "/etc/zsh/zshenv"

[ "$(tty)" = "/dev/tty1" ] && exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
[ "$(tty)" = "/dev/tty2" ] && exec $SCRIPT_DIR/tmuxsession

