DOTS=~/.config/dots 

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  DOTS=$DOTS exec startx "$DOTS/wm/.config/X11/xinitrc"
fi
