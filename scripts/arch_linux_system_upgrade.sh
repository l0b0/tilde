#!/bin/sh

set -o errexit -o noclobber -o nounset

sudo pacman --sync --refresh --sysupgrade

# Fix CUPS PPD files
if sudo /usr/sbin/cups-genppdupdate | grep Updated
then
    sudo systemctl restart org.cups.cupsd
fi

find "${HOME}/dev/tilde/patches" -type f -exec sudo patch --directory=/ --forward --strip=0 --input={} ';'

running_kernel="$(uname -r)"
installed_kernel="$(file --brief /boot/vmlinuz-linux | sed 's/.* version \([^ ]\+\).*/\1/')"
if [ "$running_kernel" != "$installed_kernel" ]
then
    printf "Reboot needed to update running kernel from %s to %s\n" "$running_kernel" "$installed_kernel" >&2
fi
