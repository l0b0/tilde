#!/usr/bin/env bash
#
# NAME
#    count_files.sh - Test count_files function
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

oneTimeSetUp() {
    . "${HOME}/.bash_aliases" >/dev/null

    test_dir="$__shunit_tmpDir"/$'--$`\! *@ \a\b\e\E\f\r\t\v\\\"\' \n'
}

setUp() {
    mkdir -- "$test_dir"
    assertEquals 'Exit code' 0 $?
}

tearDown() {
    rm -r -- "$test_dir"
}

test_empty() {
    assertEquals 'Count' 0 "$(count_files "$test_dir")"
}

test_simple_path() {
    touch -- "$test_dir/a"
    assertEquals 'Exit code' 0 $?
    assertEquals 'Count' 1 "$(count_files "$test_dir")"
}

test_complex_path() {
    touch -- "$test_dir"/$'--$`\! *@ \a\b\e\E\f\r\t\v\\\"\' \n'
    assertEquals 'Exit code' 0 $?
    assertEquals 'Count' 1 "$(count_files "$test_dir")"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. shunit2
