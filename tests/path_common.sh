#!/usr/bin/env bash
#
# NAME
#    path_common.sh - Test path_common function
#
# BUGS
#    https://github.com/l0b0/tilde/issues
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2011-2013 Victor Engmark
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

test_simple() {
    assertEquals \
        'Single character' \
        /a/bx \
        "$(path_common /a/b/c/d /a/b/e/f; echo x)"
    assertEquals \
        'Normal' \
        /long/namesx \
        "$(path_common /long/names/foo /long/names/bar; echo x)"
}

test_root() {
    assertEquals 'Root path' /x "$(path_common / /a/b/c; echo x)"
}

test_relative() {
    assertEquals 'No dot' a/bx "$(path_common a/b/c/d a/b/e/f ; echo x)"
    assertEquals \
        'With dot' \
        ./a/bx \
        "$(path_common ./a/b/c/d ./a/b/e/f; echo x)"
}

test_special() {
    assertEquals \
        'Newlines' \
        $'\n/\n'x \
        "$(path_common $'\n/\n/\n' $'\n/\n'; echo x)"
    assertEquals 'Dashes' '--x' "$(path_common --/-- --; echo x)"
}

test_empty() {
    assertEquals 'Empty $1 and $2' x "$(path_common '' ''; echo x)"
    assertEquals 'Empty $1' x "$(path_common '' /foo/bar; echo x)"
    assertEquals 'Empty $2' x "$(path_common /foo/bar ''; echo x)"
}

test_substring() {
    assertEquals x "$(path_common /foo /fo; echo x)"
}

test_multiple_slashes() {
    assertEquals \
        /long/namesx \
        "$(path_common //long/names/foo /long/names///bar; echo x)"
}

test_complex() {
    assertEquals \
        'Complicated path' \
        $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'x \
        "$(path_common $'--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n' \
            $'--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n'; echo x)"
    assertEquals \
        'Complicated path with bracketing' \
        $'/test/--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'x \
        "$(path_common $'/test/--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n/foo' \
            $'/test/--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n/bar'; echo x)"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
