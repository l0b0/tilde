#!/usr/bin/env bash
#
# NAME
#        substring.sh - Test substring function
#
# SYNOPSIS
#        ./substring.sh URL
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright (C) 2012 Victor Engmark
#
#        This program is free software: you can redistribute it and/or modify it
#        under the terms of the GNU General Public License as published by the
#        Free Software Foundation, either version 3 of the License, or (at your
#        option) any later version.
#
#        This program is distributed in the hope that it will be useful, but
#        WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#        General Public License for more details.
#
#        You should have received a copy of the GNU General Public License along
#        with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

oneTimeSetUp() {
    . "${HOME}/.bash_aliases" >/dev/null
}

test_empty() {
    string=
    for start in -2 -1 0 1 2
    do
        for end in -2 -1 0 1 2
        do
            assertEquals substring x "$(substring "$string" $start $end; printf x)"
        done
    done
}

test_simple() {
    string=123456
    assertEquals substring x "$(substring "$string" -2 -2; printf x)"
    assertEquals substring 5x "$(substring "$string" -2 -1; printf x)"
    assertEquals substring x "$(substring "$string" -2 0; printf x)"
    assertEquals substring 5x "$(substring "$string" -2 1; printf x)"
    assertEquals substring 56x "$(substring "$string" -2 2; printf x)"
    assertEquals substring x "$(substring "$string" -1 -2; printf x)"
    assertEquals substring x "$(substring "$string" -1 -1; printf x)"
    assertEquals substring x "$(substring "$string" -1 0; printf x)"
    assertEquals substring 6x "$(substring "$string" -1 1; printf x)"
    assertEquals substring 6x "$(substring "$string" -1 2; printf x)"
    assertEquals substring 1234x "$(substring "$string" 0 -2; printf x)"
    assertEquals substring 12345x "$(substring "$string" 0 -1; printf x)"
    assertEquals substring x "$(substring "$string" 0 0; printf x)"
    assertEquals substring 1x "$(substring "$string" 0 1; printf x)"
    assertEquals substring 12x "$(substring "$string" 0 2; printf x)"
    assertEquals substring 234x "$(substring "$string" 1 -2; printf x)"
    assertEquals substring 2345x "$(substring "$string" 1 -1; printf x)"
    assertEquals substring x "$(substring "$string" 1 0; printf x)"
    assertEquals substring 2x "$(substring "$string" 1 1; printf x)"
    assertEquals substring 23x "$(substring "$string" 1 2; printf x)"
    assertEquals substring 34x "$(substring "$string" 2 -2; printf x)"
    assertEquals substring 345x "$(substring "$string" 2 -1; printf x)"
    assertEquals substring x "$(substring "$string" 2 0; printf x)"
    assertEquals substring 3x "$(substring "$string" 2 1; printf x)"
    assertEquals substring 34x "$(substring "$string" 2 2; printf x)"
}

test_missing_params() {
    string=123456
    assertEquals substring 56x "$(substring "$string" -2; printf x)"
    assertEquals substring 123456x "$(substring "$string" 0; printf x)"
    assertEquals substring 3456x "$(substring "$string" 2; printf x)"
    assertEquals substring ${string}x "$(substring "$string"; printf x)"
}

test_complex() {
    string=$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'
    assertEquals substring "${string}"x "$(substring "$string"; printf x)"
    assertEquals substring $'`!*'x "$(substring "$string" 3 3; printf x)"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
