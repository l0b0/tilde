#!/usr/bin/env bash
#
# NAME
#    path_common.sh - Test path_common function
#
# BUGS
#    https://github.com/l0b0/tilde/issues
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2011-2012 Victor Engmark
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
        "$(path_common /a/b/c/d /a/b/e/f; echo x)" \
        /a/bx
    assertEquals \
        'Normal' \
        "$(path_common /long/names/foo /long/names/bar; echo x)" \
        /long/namesx
}

test_root() {
    assertEquals 'Root path' "$(path_common / /a/b/c; echo x)" /x
}

test_relative() {
    assertEquals 'No dot' "$(path_common a/b/c/d a/b/e/f ; echo x)" a/bx
    assertEquals \
        'With dot' \
        "$(path_common ./a/b/c/d ./a/b/e/f; echo x)" \
        ./a/bx
}

test_special() {
    assertEquals \
        'Newlines' \
        "$(path_common $'\n/\n/\n' $'\n/\n'; echo x)" \
        $'\n/\n'x
    assertEquals 'Dashes' "$(path_common --/-- --; echo x)" '--x'
}

test_empty() {
    assertEquals 'Empty $1 and $2' "$(path_common '' ''; echo x)" x
    assertEquals 'Empty $2' "$(path_common /foo/bar ''; echo x)" x
}

test_substring() {
    assertEquals  "$(path_common /foo /fo; echo x)" x
}

test_complex() {
    assertEquals \
        'Complicated path' \
        "$(path_common $'--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n' \
            $'--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n'; echo x)" \
        $'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'x
    assertEquals \
        'Complicated path with bracketing' \
        "$(path_common $'/test/--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n/foo' \
            $'/test/--$`!*@\a\b\E\f\r\t\v\\\'\"\360\240\202\211 \n/bar'; echo x)" \
        $'/test/--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'x
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
