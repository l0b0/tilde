#!/usr/bin/env bash
#
# NAME
#        suspend-on-close.sh - Enable suspend when closing laptop lid
#
# SYNOPSIS
#        suspend-on-close.sh [options]
#
# DESCRIPTION
#        Adds a new "post" event to the ACPI lid close handler
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

set -o errexit -o noclobber -o nounset -o pipefail

directory="$(dirname -- "$0")"
PATH='/usr/bin:/bin'

target_dir="/etc/acpi/local"
target_file="${target_dir}/lid.sh.post"

if [[ ! -d "$target_dir" ]]
then
    mkdir "$target_dir"
fi

> "$target_file" cat <<EOF
#!/bin/sh
pm-suspend
EOF

chmod u+x "$target_file"
