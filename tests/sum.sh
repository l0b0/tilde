#!/usr/bin/env bash
#
# NAME
#    sum.sh - Test sum function
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
    . "${directory}/../.bash_aliases" >/dev/null
    test_dir="$__shunit_tmpDir"/$'--$`!*@\a\b\E\f\r\t\v\\\'"\360\240\202\211 \n'
    file1="$test_dir/file1"
    file2="$test_dir/file2"
}

setUp() {
    mkdir -- "$test_dir"
    assertEquals 'Exit code' 0 $?
}

tearDown() {
    rm -r -- "$test_dir"
}

test_empty() {
    assertEquals \
        'string without newline' \
        x \
        "$(printf '' | sum; printf x)"
    assertEquals \
        'string with newline' \
        x \
        "$(echo '' | sum; printf x)"

    touch -- "$file1"
    assertEquals \
        'single file' \
        x \
        "$(sum "$file1"; printf x)"

    touch -- "$file2"
    assertEquals \
        'two files' \
        x \
        "$(sum "$file1" "$file2"; printf x)"
}

test_simple() {
    string='1 2 3 4'
    sum=10
    assertEquals \
        'string' \
        "$sum"$'\nx' \
        "$(printf "$string" | sum; printf x)"

    printf %s "$string" > "$file1"
    assertEquals \
        'file without newline' \
        "$sum"$'\nx' \
        "$(sum "$file1"; printf x)"

    echo "$string" > "$file2"
    assertEquals \
        'file with newline' \
        "$sum"$'\nx' \
        "$(sum "$file2"; printf x)"
}


test_normal() {
    string='1000 100  10   1'
    sum=1111
    assertEquals \
        'string' \
        "$sum"$'\nx' \
        "$(printf "$string" | sum; printf x)"

    printf %s "$string" > "$file1"
    assertEquals \
        'file without newline' \
        "$sum"$'\nx' \
        "$(sum "$file1"; printf x)"

    echo "$string" > "$file2"
    assertEquals \
        'file with newline' \
        "$sum"$'\nx' \
        "$(sum "$file2"; printf x)"
}

test_complex() {
    string=$'1 20\n\n300\t\t\t4000 \n\t50000'
    sum=54321
    assertEquals \
        'string' \
        "$sum"$'\nx' \
        "$(printf "$string" | sum; printf x)"

    printf %s "$string" > "$file1"
    assertEquals \
        'file without newline' \
        "$sum"$'\nx' \
        "$(sum "$file1"; printf x)"

    echo "$string" > "$file2"
    assertEquals \
        'file with newline' \
        "$sum"$'\nx' \
        "$(sum "$file2"; printf x)"
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
