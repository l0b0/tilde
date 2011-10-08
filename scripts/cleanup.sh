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

set -o errexit -o nounset -o pipefail
shopt -s globstar

directory="$(dirname -- "$0")"
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

if [ -e ~/.gnupg/trustdb.gpg ]
then
    verbose_echo "Backup GPG trust values"
    gpg --export-ownertrust > ~/.gnupg/ownertrust.txt
fi

verbose_echo "Remove comments from text files"
for path in ~/.config/vlc/vlcrc ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.mozilla/**/cert_override.txt
do
    if [ -e "$path" ]
    then
        sed -i -e '/^#/D' -e 's/[[:space:]]\+#.*$//g' "$path"
    fi
done

if [ -e ~/.config/vlc/vlcrc ]
then
    verbose_echo "Collapse consecutive blank lines in text files"
    sed -i -e '/./,/^$/!d' ~/.config/vlc/vlcrc
fi

verbose_echo "Sort text files"
for text_file in ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.mozilla/**/{cert_override.txt,persdict.dat}
do
    sort --output=$text_file $text_file
done

verbose_echo "Create DAT files for signatures"
shopt -s extglob
for text_file in "${directory}/../.signatures/"!(*.dat)
do
    strfile "$text_file"
done

verbose_echo "Vacuum SQLite databases"
for db_file in ~/.mozilla/**/*.sqlite
do
    echo 'VACUUM;' | sqlite3 $db_file
done
