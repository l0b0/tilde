#!/usr/bin/env bash
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
#        Copyright © 2011-2014 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

set -o errexit -o noclobber -o nounset -o pipefail
shopt -s nullglob

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATH='/usr/sbin:/usr/bin:/sbin:/bin'

. "$directory/../shell-includes/usage.sh"
. "$directory/../shell-includes/verbose_print_line.sh"

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

if [ -e ~/.gnupg/trustdb.gpg ]
then
    verbose_print_line "Backup GPG trust values"
    set +o noclobber
    gpg --export-ownertrust > ~/.gnupg/ownertrust.txt
    set -o noclobber
fi

verbose_print_line "Remove comments from text files"
for path in ~/.config/vlc/vlcrc ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.jedit/keymaps/imported_keys.props ~/.mozilla/*/*/cert_override.txt
do
    if [ -e "$path" ]
    then
        sed -i -e '/^#/D' -e 's/[[:space:]]\+#.*$//g' "$path"
    fi
done

if [ -e ~/.config/vlc/vlcrc ]
then
    verbose_print_line "Collapse consecutive blank lines in text files"
    sed -i -e '/./,/^$/!d' ~/.config/vlc/vlcrc
fi

verbose_print_line "Fix .bash_history line endings"
sed -i -e 's/ *$/ /' "${directory}/../.bash_history"

verbose_print_line "Auto-tag .bash_history lines"
sed -i -e 's/^\(\(man\|info\) [^#]\+\)$/\1# help /' "${directory}/../.bash_history"

verbose_print_line "Sort text files"
for path in ~/.config/ipython/profile_default/history.py ~/.gnupg/ownertrust.txt ~/.jedit/properties ~/.jedit/keymaps/imported_keys.props ~/.mozilla/*/*/{cert_override.txt,persdict.dat} "${directory}/../.bash_history" "${directory}/../.Xresources"
do
    if [ -e "$path" ]
    then
        verbose_print_line "Sorting $(printf %q "$path")"
        sort --unique --output="$path" "$path"
    else
        verbose_print_line "Missing $(printf %q "$path")"
    fi
done

verbose_print_line "Create DAT files for signatures"
shopt -s extglob
for path in "${directory}/../.signatures/"!(*.dat)
do
    if [ -e "$path" ]
    then
        strfile "$path"
    fi
done

verbose_print_line "Vacuum SQLite databases"
for db_file in ~/.mozilla/*/*/*.sqlite
do
    if [ -e "$path" ]
    then
        echo 'VACUUM;' | sqlite3 $db_file
    fi
done
