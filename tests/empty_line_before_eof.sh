#!/usr/bin/env bash
#
# NAME
#    empty_line_before_eof.sh - Test empty_line_before_eof function
#
# BUGS
#    https://github.com/l0b0/tilde/issues
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2011, 2013 Victor Engmark
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

declare -r directory="$(dirname -- "$0")"

oneTimeSetUp() {
    . "${directory}/../.bash_aliases" >/dev/null
}

test_empty() {
    string=
    assertEquals unmodified x "$(printf %s "$string" | empty_line_before_eof; printf x)"
}

test_multiline() {
    for start_length in 0 1 2 3
    do
        for middle_length in 0 1 2 3
        do
            for end_length in 0 1 2 3
            do
                printf -v start "%*s" $start_length
                printf -v middle "%*s" $middle_length
                printf -v end "%*s" $end_length
                string="${start// /$'\n'}foo${middle// /$'\n'}bar${end// /$'\n'}"
                if [[ "$end_length" != 0 ]]
                then
                    assertEquals unmodified "$string"x "$(printf %s "$string" | empty_line_before_eof; printf x)"
                else
                    assertEquals modified "$string"$'\n'x "$(printf %s "$string" | empty_line_before_eof; printf x)"
                fi
            done
        done
    done
}

test_complex() {
    string=$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'
    assertEquals unchanged "$string"x "$(printf %s "$string" | empty_line_before_eof; printf x)"
    string=$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 '
    assertEquals modified "$string"$'\n'x "$(printf %s "$string" | empty_line_before_eof; printf x)"
}

test_random() {
    # Change configuration to tweak coverage/time
    repeat=100
    chars=1024

    random_device=/dev/urandom
    if [ ! -e "$random_device" ]
    then
        return
    fi
    while [ "$repeat" -gt '0' ]
    do
        IFS= read -r -d '' -n "$chars" < "$random_device"
        assertEquals "Could not read random device; exit code $?" 0 $?
        if [ -n "$REPLY" ] && [ -n "${REPLY##*$'\n'}" ]
        then
            assertEquals \
                "Should've added a newline to $(printf %q "$REPLY")" \
                "$REPLY"$'\n'x \
                "$(printf %s "$REPLY" | empty_line_before_eof; printf x)"
        else
            assertEquals \
                "Should not have changed $(printf %q "$REPLY")" \
                "$REPLY"x \
                "$(printf %s "$REPLY" | empty_line_before_eof; printf x)"
        fi
        let --repeat
    done
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
