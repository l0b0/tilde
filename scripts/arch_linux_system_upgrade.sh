#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset -o pipefail

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

pacman-key --refresh-keys

upgrade_start="$(date +%s)"
pacman --sync --refresh --sysupgrade

# Fix CUPS PPD files
if /usr/sbin/cups-genppdupdate | grep Updated
then
    systemctl restart org.cups.cupsd
fi

find "$(dirname "$directory")/patches" -type f -exec patch --directory=/ --forward --strip=0 --input={} ';'

running_kernel="$(uname -r)"
installed_kernel="$(file --brief /boot/vmlinuz-linux | sed 's/.* version \([^ ]\+\).*/\1/')"
if [ "$running_kernel" != "$installed_kernel" ]
then
    printf "Reboot needed to update running kernel from %s to %s\n" "$running_kernel" "$installed_kernel" >&2
fi

ramdisk_modified="$(stat --format=%Y /boot/initramfs-linux.img)"
if [[ "$ramdisk_modified" > "$upgrade_start" ]]
then
    printf "Reboot needed to load new initial ramdisk environment\n" >&2
fi

updatedb
set +o errexit
locate .pacnew
set -o errexit
