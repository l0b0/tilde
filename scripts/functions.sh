# NAME
#    functions.sh - Utility functions for shell scripts
#
# SYNOPSIS
#    . functions.sh
#
# BUGS
#    Email bugs to victor dot engmark at gmail dot com.
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2010 Victor Engmark
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

# Exit codes from /usr/include/sysexits.h, as recommended by
# http://www.faqs.org/docs/abs/HTML/exitcodes.html
EX_USAGE=64       # command line usage error

# Custom errors
EX_UNKNOWN=1

error() # Synopsis: error <message> [exit code]
{
    # Output error message with optional error code
    test -t 1 && tput setf 4
    echo "$1" >&2
    tput sgr0 # Reset terminal

    exit ${2:-$EX_UNKNOWN}
}

usage()
{
    # Print documentation until the first empty line
    while read line
    do
        if [ ! "$line" ]
        then
            exit $EX_USAGE
        fi
        echo "$line"
    done < "$0"
}

verbose_echo()
{
    if [ "$verbose" ]
    then
        if [ "$1" = "-n" ]
        then
            shift
            echo -n "$*"
        else
            echo "$*"
        fi
    fi
}
