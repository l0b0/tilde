#!/usr/bin/env bash
#
# NAME
#    find_date_sorted.sh - Test find_date_sorted function
#
# BUGS
#    https://github.com/l0b0/tilde/issues
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2012 Victor Engmark
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
    . "${HOME}/.bash_aliases" >/dev/null
    test_dir="$__shunit_tmpDir"/$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'
    file1="$test_dir/file1"
    file2="$test_dir/file2"
}

setUp() {
    mkdir -- "$test_dir"
    assertEquals 'Exit code' 0 $?
    cd -- "$test_dir"
    assertEquals 'Exit code' 0 $?
}

tearDown() {
    rm -r -- "$test_dir"
}

test_empty() {
    assertEquals \
        'full path' \
        "$test_dir"x \
        "$(find_date_sorted "$test_dir"; printf x)"

    assertEquals \
        'only current directory' \
        '.x' \
        "$(find_date_sorted .; printf x)"

    assertEquals \
        'no files in directory' \
        x \
        "$(find_date_sorted . -mindepth 1; printf x)"
}

test_file() {
    # Note: Because the directory modification time changes when creating files,
    # we use -mindepth 1.
    touch -- "$file1"
    assertEquals \
        'full path' \
        "${file1}$(printf '\0')"x \
        "$(find_date_sorted "$test_dir" -mindepth 1; printf x)"

    touch -- "$file2"
    assertEquals \
        'full path' \
        "${file1}$(printf '\0')${file2}$(printf '\0')"x \
        "$(find_date_sorted "$test_dir" -mindepth 1; printf x)"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
