#!/bin/sh
#
# NAME
#        gnome-awesome.sh - Setup Awesome as the GNOME window manager
#
# SYNOPSIS
#        gnome-awesome.sh
#
# DESCRIPTION
#        Based on the instructions at
#        <http://awesome.naquadah.org/wiki/Quickly_Setting_up_Awesome_with_Gnome#Ubuntu_11.10>.
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright © 2013 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

set -o errexit -o noclobber -o nounset

> /usr/share/gnome-session/sessions/awesome.session cat <<EOF
[GNOME Session]
Name=Awesome session
RequiredComponents=gnome-settings-daemon;
RequiredProviders=windowmanager;
DefaultProvider-windowmanager=awesome
DefaultProvider-notifications=notification-osd
DesktopName=GNOME
EOF

> /usr/share/applications/awesome.desktop cat <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Awesome
Comment=The awesome launcher!
TryExec=awesome
Exec=awesome
EOF

> /usr/share/xsessions/gnome-awesome.desktop cat <<EOF
[Desktop Entry]
Name=Awesome GNOME
Comment=Dynamic window manager
TryExec=/usr/bin/gnome-session
Exec=gnome-session --session=awesome
Type=XSession
EOF
