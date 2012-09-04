[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

setxkbmap -option compose:caps

xautolock -time 10 -locker "gnome-screensaver-command --lock"

eval `gnome-keyring-daemon`
