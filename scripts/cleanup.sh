#!/bin/bash
#
# NAME
#        cleanup.sh - Clean up settings before commit
#
# SYNOPSIS
#        cleanup.sh [options]
#
# DESCRIPTION
#        'Vacuums' .sqlite files, removes comments, and sorts text files.
#
#        -v,--verbose    Verbose output
#
# EXAMPLE
#        cleanup.sh -v
#               Cleanup and show process
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright © 2011 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

set -o errexit
set -o nounset
shopt -s globstar

self_x="$(readlink -fn -- "$0"; echo x)"
self="${self_x%x}"
directory="$(dirname -- "$self")"
base="$(basename -- "$0")"
PATH='/usr/bin:/bin'

. "$directory/functions.sh"

# Process parameters
until [ $# -eq 0 ]
do
    case $1 in
        -v|--verbose)
            verbose=--verbose
            shift
            ;;
        *)
            usage
            ;;
    esac
done

verbose_echo "Reset GNOME configuration modification times"
sed -i -e 's/ mtime="[0-9]*"/ mtime="0"/g' -- ~/.gconf/**/%gconf.xml

verbose_echo "Backup GPG trust values"
gpg --export-ownertrust > ~/.gnupg/ownertrust.txt

verbose_echo "Remove comments from text files"
sed -i -e '/^#/D' -e 's/[[:space:]]+#.*$//g' ~/.config/vlc/vlcrc ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.mozilla/**/cert_override.txt

verbose_echo "Collapse consecutive blank lines in text files"
sed -i -e '/./,/^$/!d' ~/.config/vlc/vlcrc

verbose_echo "Sort text files"
for text_file in ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.mozilla/**/{cert_override.txt,persdict.dat}
do
    sort --output=$text_file $text_file
done

verbose_echo "Vacuum SQLite databases"
for db_file in ~/.mozilla/**/*.sqlite
do
    echo 'VACUUM;' | sqlite3 $db_file
done
