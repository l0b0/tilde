#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]
then
    for path in /etc/X11/xinit/xinitrc.d/*
    do
        [ -x "$path" ] && . "$path"
    done
    unset path
fi

# User settings
user_resources=$HOME/.Xresources
if [ -f "$user_resources" ]
then
    xrdb -merge "$user_resources"
fi
unset user_resources

# Machine specific settings
local_xinitrc=$HOME/.xinitrc_local
if [ -f "$local_xinitrc" ]
then
    . "$local_xinitrc"
fi
unset local_xinitrc

xscreensaver -no-splash &

exec awesome
