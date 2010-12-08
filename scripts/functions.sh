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

cmdname="$(basename -- "$0")"

help_info="Try \`$cmdname --help\` for more information."

warning()
{
    # Output warning messages
    # Color the output red if it's an interactive terminal
    # @param $1...: Messages

    test -t 1 && tput setf 4

    while [ -n "$1" ]
    do
        echo -e "$1" >&2
        shift
    done

    test -t 1 && tput sgr0 # Reset terminal
}

error()
{
    # Output error messages with optional exit code
    # @param $1...: Messages
    # @param $N: Exit code (optional)

    messages=( "$@" )

    # If the last parameter is a number, it's not part of the messages
    eval last_parameter="\$$#"
    if [[ "$last_parameter" =~ ^[0-9]*$ ]]
    then
        exit_code=$last_parameter
        unset messages[$((${#messages[@]} - 1))]
    fi

    warning "${messages[@]}"

    exit ${exit_code:-$EX_UNKNOWN}
}

usage()
{
    # Print documentation until the first empty line
    while read line
    do
        if [ ! "$line" ]
        then
            exit
        elif [ "${line:0:2}" == '#!' ]
        then
            # Shebang line
            continue
        fi
        echo -e "${line:2}" # Remove comment characters
    done < "$0"
}

verbose_echo()
{
    # @param $1: Optionally '-n' for echo to output without newline
    # @param $(1|2)...: Messages
    if [ "$verbose" ]
    then
        if [ "$1" = "-n" ]
        then
            $newline='-n'
            shift
        fi

        while [ -n "$1" ]
        do
            echo -e $newline "$1" >&2
            shift
        done
    fi
}
