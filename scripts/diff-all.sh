#!/bin/bash
#
# NAME
#    diff-all.sh - Diff all files in the current directory against the
#    files on the root file system.
#
# SYNOPSIS
#    diff-all.sh [options]
#
# OPTIONS
#    -v     Verbose output
#    -d     Specify the source and target directories
#
# EXAMPLE
#    ./diff-all.sh -v -d /etc/apache2 ~/settings/apache2
#
# DESCRIPTION
#    Checks for differences between the source tree and the root tree.
#
# BUGS
#    Email bugs to victor dot engmark at gmail dot com. Please include the
#    output of running this script in verbose mode (-v).
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2008 Victor Engmark
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

# Init
IFS="
" # Make sure paths with spaces don't make any trouble when looping
PATH="/usr/bin:/bin"
diff=/usr/bin/kdiff3
cmdname=`basename $0`
directory=`dirname $0`
source_dir="$PWD"
target_dir="/"

#Error messages
errm_unknown="Unknown error in $cmdname" #Code 1
#Code 2 is reserved: http://www.faqs.org/docs/abs/HTML/exitcodes.html
usage="Usage: ${cmdname} [-v] [-d source target]" #Code 3

# Process parameters
until [ $# -eq 0 ]
do
	case $1 in
		-v)
			verbose=1
			shift
			;;
		-d)
			if [ -z "$2" ] || [ -z "$3" ]
			then
				echo "$usage" >&2
				exit 3
			fi
			source_dir=$2
			target_dir=$3
			shift 3
			;;
		*)
			#Unknown parameter
			if [ $verbose ]
			then
				echo "Unknown parameter: $1" >&2
			fi
			echo "$usage" >&2
			exit 3
			;;
	esac
done

# Make sure the directory names don't end with a slash
source_dir="${source_dir%\/}"

# Loop over non-SVN files (remove the -not part if you're in a normal file structure)
for source_path in `find "$source_dir" -type f -not -path "*/.svn/*"`
do
	target_path="${source_path:${#source_dir}}"
	if [ $verbose ]
	then
		echo "Source path: $source_path"
		echo "Target path: $target_path"
	fi
	if [[ -f "$target_path" && ! -L "$target_path" ]]
	then
		if [ $verbose ]
		then
			echo "diff \"$source_path\" \"$target_path\""
		fi
		$diff $source_path $target_path
	fi
done

# End
exit 0
