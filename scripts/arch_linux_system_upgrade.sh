#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset -o pipefail

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$(dirname "$directory")/shell-includes/warning.sh"

pacman-key --refresh-keys

upgrade_start="$(date +%s)"
pacman --sync --refresh --sysupgrade

# Fix CUPS PPD files
if /usr/sbin/cups-genppdupdate | grep --quiet Updated
then
    systemctl restart org.cups.cupsd
fi

find "$(dirname "$directory")/patches" -type f -exec patch --directory=/ --forward --strip=0 --input={} ';'

running_kernel="$(uname -r)"
installed_kernel="$(file --brief /boot/vmlinuz-linux | sed 's/.* version \([^ ]\+\).*/\1/')"
if [[ "$running_kernel" != "$installed_kernel" ]]
then
    warning "Reboot needed to update running kernel from ${running_kernel} to ${installed_kernel}"
fi

ramdisk_modified="$(stat --format=%Y /boot/initramfs-linux.img)"
if [[ "$ramdisk_modified" > "$upgrade_start" ]]
then
    warning "Reboot needed to load new initial ramdisk environment"
fi

updatedb
while read -u9 line
do
    warning "$line"
done 9< <(locate .pacnew)
