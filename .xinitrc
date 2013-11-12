#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

set -o errexit -o noclobber -o nounset

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

# GNOME Keyring Daemon
source /etc/X11/xinit/xinitrc.d/30-dbus
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# Network Manager task bar applet
nm-applet &

exec awesome
