#!/bin/sh
#
# NAME
#    make-links.sh - Create/check symlinks recursively
#
# SYNOPSIS
#    make-links.sh [options]
#
# OPTIONS
#    -d,--directory    Specify where to create symlinks (default current $HOME)
#    -t,--target       Specify where to target symlinks (default ./home/<user>)
#    -v,--verbose      Verbose output
#
# EXAMPLE
#    /path/to/make-links.sh -d ~/settings/Linux
#        Create links in the home directory based on files in ~/settings/Linux.
#
#    /path/to/make-links.sh -v
#        Create links in ~ based on files in the directory of this file.
#
# DESCRIPTION
#    If the file in the source directory doesn't exist in the target directory,
#    a symlink is created directly.
#    If the file exists, or the target directory does not exist, the user is
#    given options to continue.
#
# BUGS
#    Email bugs to victor dot engmark at gmail dot com. Please include the
#    output of running this script in verbose mode (-v).
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2008-2010 Victor Engmark
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

# Output error message with optional error code
error()
{
    test -t 1 && {
        tput setf 4
        echo "$1" >&2
        tput setf 7
    } || echo "$1" >&2
    if [ -z "$2" ]
    then
        exit $EX_UNKNOWN
    else
        exit $2
    fi
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
    done < $0
}

verbose_echo()
{
    if [ $verbose ]
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

ifs_original="$IFS" # Reset when done
IFS='
' # Make sure paths with spaces don't make any trouble when looping

PATH='/usr/bin:/bin'
cmdname=$(basename $0)
directory=$(dirname $(readlink -f $0))

diff=/usr/bin/meld
target_base="${directory}/home/$(whoami)/"
directory_base="$HOME"

# Exit codes from /usr/include/sysexits.h, as recommended by
# http://www.faqs.org/docs/abs/HTML/exitcodes.html
EX_USAGE=64       # command line usage error

# Custom errors
EX_UNKNOWN=1
EX_NO_SUCH_DIR=91
EX_NO_SUCH_EXEC=92

# Process parameters
params=$(getopt -o d:t:v -l directory:,target:,verbose --name $cmdname -- "$@")
if [ $? -ne 0 ]
then
    usage
fi

eval set -- "$params"

while true
do
    case $1 in
        -d|--directory)
            directory=$2
            shift 2
            ;;
        -t|--target)
            target=$2
            shift 2
            ;;
        -v|--verbose)
            verbose=1
            shift
            ;;
        --) shift
            break
            ;;
        *)
            usage
            ;;
    esac
done

if [ $# -ne 0 ]
then
    usage
fi

verbose_echo "Running $cmdname at $(date)."

# Make sure the directory paths don't end with a slash
target_base="${target_base%\/}"
directory_base="${directory_base%\/}"

verbose_echo "Directory: '${directory_base}'"
verbose_echo "Target: '${target_base}'"

# Find files
for target_path in $(find "$target_base" -mindepth 1 -type f)
do
    directory_path="${directory_base}${target_path#${target_base}}"
    directory_dir="$(dirname "${directory_path}")"
    unset replace_file
    unset create_dir

    # Trivial case
    if [ -L "$directory_path" ]
    then
        verbose_echo "${directory_path} -> ${target_path} already exists; skipping."
        continue
    fi

    # Identical file
    if [ "$(readlink -f $target_path)" = "$(readlink -f $directory_path)" ]
    then
        verbose_echo "${directory_path} == ${target_path}; skipping."
        continue
    fi

    # File exists
    if [ -f "$directory_path" ]
    then
        # Make sure we skip or replace in the end
        while ! expr "$replace_file" : "^[SsRr]$" > /dev/null
        do
            echo "\"${directory_path}\" is a proper file. What do you want to do?"
            read -p '[S]kip, [D]iff, [R]eplace: ' replace_file
            if expr "$replace_file" : "^[Dd]$" > /dev/null
            then
                verbose_echo "Diffing ${target_path} and ${directory_path}"
                $diff "$target_path" "$directory_path"
            fi
        done

        if expr "$replace_file" : "^[Rr]$"
        then
            verbose_echo "Removing ${directory_path}"
            rm "$directory_path"
        else
            continue
        fi
    fi

    # Not a proper file
    if [ -e "$directory_path" ]
    then
        echo "${directory_path} exists but is not a file; skipping."
        continue
    fi

    # Directory missing; might have to create it
    if [ ! -e "$directory_dir" ]
    then
        while ! expr "$create_dir" : "^[SsCc]$" > /dev/null
        do
            echo "\"${directory_dir}\" doesn't exist. What do you want to do?"
            read -p '[S]kip or [C]reate: ' create_dir
        done

        if expr "$create_dir" : "^[Cc]$" > /dev/null
        then
            mkdir -p "$directory_dir"
        else
            continue
        fi
    fi

    echo "Creating symlink ${directory_path} -> ${target_path}."
    ln -s "$target_path" "$directory_path"
done

verbose_echo "${cmdname} completed at $(date)."
