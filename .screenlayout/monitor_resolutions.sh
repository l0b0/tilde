#!/bin/sh
#
# NAME
#        monitor_resolutions.sh - Variables for monitor resolutions
#
# SYNOPSIS
#        eval `./monitor_resolutions.sh`
#
# DESCRIPTION
#        Prints a set of `eval`-able variable assignments with monitor name,
#        width and height for each monitor plus a monitor count.
#
# EXAMPLES
#        eval `./monitor_resolutions.sh`
#               Assign monitor1_name, monitor1_width, monitor1_height,
#               monitor2_name, etc. and monitor_count variables.
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright (C) 2013-2014 Victor Engmark
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        (at your option) any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

monitor_info() {
    xrandr --query | tee ~/.xsession-xrandr-query
}

monitor_resolutions() {
    # Input: XRandR monitor info
    # Output: Lines with monitor name, width and height separated by spaces
    while read -r word1 word2 _
    do
        if [ "${word2:-}" = 'connected' ]
        then
            IFS='xi ' read -r width height _
            printf '%s %d %d\n' "$word1" "$width" "$height"
        fi
    done
}

monitor_assignments() {
    # Input: Lines with monitor name, width and height separated by spaces
    # Output: eval-able variable assignments for each input value, including a final count
    count=0
    while read monitor width height
    do
        count=$(($count + 1))
        printf "monitor%d_name='%s'\n" "$count" "$monitor"
        printf "monitor%d_width='%s'\n" "$count" "$width"
        printf "monitor%d_height='%s'\n" "$count" "$height"
    done
    printf "monitor_count='%s'\n" "$count"
}

monitor_info | monitor_resolutions | monitor_assignments
