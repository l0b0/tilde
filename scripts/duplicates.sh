#!/usr/bin/env bash
#
# NAME
#        duplicates.sh - Check for duplicate files
#
# SYNOPSIS
#        duplicates.sh [OPTION]... DIRECTORY
#
# DESCRIPTION
#        Compares all files to all other files recursively in the specified
#        directory. If they are binary equal, prints out the command necessary
#        for you to check for yourself.
#
#        Based on
#        https://github.com/l0b0/tilde/blob/master/examples/safe-find.sh
#
# EXAMPLES
#        duplicates.sh ~/music
#               Check for duplicate music files.
#
#        duplicates.sh /tmp 2>/dev/null
#               Check for duplicate temporary files, discarding any error
#               messages (typically "Permission denied").
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright © 2011-2012 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

directory="$(dirname -- "$(readlink -fn -- "$0")")"

. "$directory/../shell-includes/functions.sh"

start_dir_x="$(readlink -fn -- "$1"; echo x)"
start_dir="${start_dir_x%x}"

if [ ! -d "$start_dir" ]
then
    usage
fi

while IFS= read -r -d '' -u 9
do
    file_path="$(readlink -fn -- "$REPLY"; echo x)"
    file_path="${file_path%x}"
    exec 8< <( find "$start_dir" -type f \( -path "$file_path" -o -exec printf '%s\0' {} + \) )
    while IFS= read -r -d '' -u 8 OTHER
    do
        cmp --quiet -- "$REPLY" "$OTHER"
        case $? in
            0)
                echo -n "cmp -- "
                printf %q "${REPLY}"
                echo -n ' '
                printf %q "${OTHER}"
                echo ""
                break
                ;;
            2)
                echo "\`cmp\` failed!"
                exit 2
                ;;
            *)
                :
                ;;
        esac
    done
done 9< <( find "$start_dir" -type f -exec printf '%s\0' {} + )
