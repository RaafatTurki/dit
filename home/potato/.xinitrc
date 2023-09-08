#!/usr/bin/env bash

# source xinitrc.d files
# if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#   [ -x "$f" ] && . "$f"
#  done
#  unset f
# fi

# xresources
# $XDG_CONFIG_HOME/x11/xres/load

# xbindkeys
# $XDG_CONFIG_HOME/x11/xbindkeys/load

# xmodmap TODO: WIP
# $XDG_CONFIG_HOME/x11/xres/load

# xrandr
# $XDG_CONFIG_HOME/x11/xrandr/load

# autostart desktop files in .config/autostart/
# dex -a

# window manager
# exec herbstluftwm --locked

exec dwm
# exec firefox
# exec dwm
# exec awesome

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login
