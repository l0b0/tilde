#!/bin/sh

# User settings
user_resources=$HOME/.Xresources
if [ -f "$user_resources" ]
then
    xrdb -merge "$user_resources"
fi

# Machine specific settings
local_xinitrc=$HOME/.xinitrc_local
if [ -f "$local_xinitrc" ]
then
    . "$local_xinitrc"
fi

exec awesome
