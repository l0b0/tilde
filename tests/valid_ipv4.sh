#!/usr/bin/env bash
#
# NAME
#    valid_ipv4.sh - Test valid_ipv4 function
#
# BUGS
#    https://github.com/l0b0/tilde/issues
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2011 Victor Engmark
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
    assertFalse empty "valid_ipv4 ''"
}

test_valid() {
    assertTrue zeros "valid_ipv4 0.0.0.0"
    assertTrue simple "valid_ipv4 1.2.3.4"
    assertTrue last "valid_ipv4 255.255.255.255"
    assertTrue octal-looking "valid_ipv4 8.08.008.0008"
}

test_invalid() {
    assertFalse 'too short' "valid_ipv4 1.1.1"
    assertFalse 'too long' "valid_ipv4 1.1.1.1.1"
    assertFalse non-numeric "valid_ipv4 a.b.c.d"
    assertFalse negative "valid_ipv4 0.0.0.-1"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
