# source any default stuff, for dbus etc.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# make gtk+2 look normal
#export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

exec openbox-session
