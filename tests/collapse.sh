#!/usr/bin/env bash
#
# NAME
#    collapse.sh - Test collapse function
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

declare -r directory=$(dirname $(readlink -f "$0"))

oneTimeSetUp() {
    . "${HOME}/.bash_aliases" >/dev/null
}

test_empty() {
    string=
    assertEquals collapse x "$(printf "$string" | collapse; printf x)"
}

test_empty_line() {
    string=$'\nfoo'
    assertEquals collapse "$string"x "$(printf "$string" | collapse; printf x)"
}

test_one_name() {
    string='foo'
    assertEquals collapse "$string"x "$(printf "$string" | collapse; printf x)"
}

test_two_names() {
    string=$'foo\nbar'
    assertEquals collapse "$string"x "$(printf "$string" | collapse; printf x)"
}

test_single_line() {
    string='foo bar'
    assertEquals collapse "$string"x "$(printf "$string" | collapse; printf x)"
}

test_double_line() {
    string=$'foo bar\nfoo baz'
    assertEquals collapse 'foo bar bazx' "$(printf "$string" | collapse; printf x)"
}

test_trailing_newline() {
    string=$'foo bar\nfoo baz\n'
    assertEquals collapse $'foo bar baz\n'x "$(printf "$string" | collapse; printf x)"
}

test_tab() {
    string=$'foo bar\tbaz\nfoo ban'
    assertEquals collapse $'foo bar\tbaz ban'x "$(printf "$string" | collapse; printf x)"
}

test_complex() {
    string="a 1 2 3
a 4 5
a 6
b 1
c 1
b 2
c 2
d 1 2 3
d 4 5
e 1
d 6
fghi foo bar
fghi baz ban"
    expected="a 1 2 3 4 5 6
b 1
c 1
b 2
c 2
d 1 2 3 4 5
e 1
d 6
fghi foo bar baz ban"
    assertEquals collapse "$expected"x "$(printf "$string" | collapse; printf x)"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. shunit2
