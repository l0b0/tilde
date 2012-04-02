#!/usr/bin/env bash
#
# NAME
#    trim.sh - Test ltrim, rtrim and trim functions
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

oneTimeSetUp() {
    . "${HOME}/.bash_aliases" >/dev/null
}

test_empty() {
    string=
    assertEquals ltrim "$(ltrim <<< "$string"; printf x)" x
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" x
    assertEquals trim  "$(printf "$string" | trim; printf x)"  x
}

test_simple() {
    string='foo'
    assertEquals ltrim "$(printf "$string" | ltrim; printf x)" "$string"x
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" "$string"x
    assertEquals trim  "$(printf "$string" | trim; printf x)"  "$string"x
}

test_space_center() {
    string='foo bar'
    assertEquals ltrim "$(printf "$string" | ltrim; printf x)" 'foo barx'
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" 'foo barx'
    assertEquals trim  "$(printf "$string" | trim; printf x)"  'foo barx'
}

test_whitespace_center() {
    string=$'foo \t\nbar'
    assertEquals  "$(printf "$string" | ltrim; printf x)" "$string"x
    assertEquals  "$(printf "$string" | rtrim; printf x)" "$string"x
    assertEquals  "$(printf "$string" | trim; printf x)"  "$string"x
}

test_space_left() {
    string=' foo bar'
    assertEquals ltrim "$(printf "$string" | ltrim; printf x)" 'foo barx'
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" "$string"x
    assertEquals trim  "$(printf "$string" | trim; printf x)"  'foo barx'
}

test_space_right() {
    string='foo bar '
    assertEquals ltrim "$(printf "$string" | ltrim; printf x)" "$string"x
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" 'foo barx'
    assertEquals trim  "$(printf "$string" | trim; printf x)"  'foo barx'
}

test_space_both() {
    string=' foo bar '
    assertEquals ltrim "$(printf "$string" | ltrim; printf x)" 'foo bar x'
    assertEquals rtrim "$(printf "$string" | rtrim; printf x)" ' foo barx'
    assertEquals trim  "$(printf "$string" | trim; printf x)"  'foo barx'
}

test_whitespace_both() {
    string=$' \t\nfoo bar \t\n'
    assertEquals  "$(printf "$string" | ltrim; printf x)" $'foo bar \t\nx'
    assertEquals  "$(printf "$string" | rtrim; printf x)" $' \t\nfoo barx'
    assertEquals  "$(printf "$string" | trim; printf x)"  $'foo barx'
}

test_ifs_none() {
    string=$' \tfoo bar\t '
    assertEquals ltrim "$(printf "$string" | IFS=$'\t' ltrim; printf x)" "$string"x
    assertEquals rtrim "$(printf "$string" | IFS=$'\t' rtrim; printf x)" "$string"x
}

test_ifs_both() {
    string=$'\tfoo\tbar\t'
    assertEquals ltrim "$(printf "$string" | IFS=$'\t' ltrim; printf x)" $'foo\tbar\tx'
    assertEquals rtrim "$(printf "$string" | IFS=$'\t' rtrim; printf x)" $'\tfoo\tbarx'
}

test_ifs_multiple() {
    string=$'\t\tfoo bar\t\t'
    assertEquals ltrim "$(printf "$string" | IFS=$'\t' ltrim; printf x)" $'foo bar\t\tx'
    assertEquals rtrim "$(printf "$string" | IFS=$'\t' rtrim; printf x)" $'\t\tfoo barx'
}

test_separator_simple() {
    string='foo bar'
    assertEquals ltrim "$(printf "$string" | ltrim $'\n'; printf x)" "$string"x
    assertEquals rtrim "$(printf "$string" | rtrim $'\n'; printf x)" "$string"x
    assertEquals trim  "$(printf "$string" | rtrim $'\n'; printf x)" "$string"x
}

test_space_tab_both_multiple() {
    string=$' \t \tfoo bar \t \t'
    assertEquals  "$(printf "$string" | ltrim; printf x)" $'foo bar \t \tx'
    assertEquals  "$(printf "$string" | rtrim; printf x)" $' \t \tfoo barx'
    assertEquals  "$(printf "$string" | trim; printf x)"  $'foo barx'
}

test_separator_simple() {
    string=$'foo\nbar'
    assertEquals ltrim "$(printf "$string" | ltrim $'\n'; printf x)" "$string"x
    assertEquals rtrim "$(printf "$string" | rtrim $'\n'; printf x)" "$string"x
}

test_separator_space_both() {
    string=$' foo \n bar '
    assertEquals ltrim "$(printf "$string" | ltrim $'\n'; printf x)" $'foo \n bar x'
    assertEquals rtrim "$(printf "$string" | rtrim $'\n'; printf x)" $' foo \n barx'
}

test_separator_space_tab_both() {
    string=$' \tfoo \t\n \tbar \t'
    assertEquals ltrim "$(printf "$string" | ltrim $'\n'; printf x)" $'foo \t\n \tbar \tx'
    assertEquals rtrim "$(printf "$string" | rtrim $'\n'; printf x)" $' \tfoo \t\n \tbarx'
}

test_text_file() {
    file="$HOME/.bash_aliases"
    assertEquals ltrim "$(printf x; cat "$file"; printf x)" "$((printf x; cat "$file"; printf x) | ltrim)"
    assertEquals rtrim "$(printf x; cat "$file"; printf x)" "$((printf x; cat "$file"; printf x) | rtrim)"
    assertEquals trim  "$(printf x; cat "$file"; printf x)" "$((printf x; cat "$file"; printf x) | trim)"
}

test_binary_file() {
    file="$(which bash)"
    assertTrue ltrim '$(cmp --quiet <(printf x; cat "'"$file"'"; printf x) <((printf x; cat "'"$file"'"; printf x) | ltrim))'
    assertTrue rtrim '$(cmp --quiet <(printf x; cat "'"$file"'"; printf x) <((printf x; cat "'"$file"'"; printf x) | rtrim))'
    assertTrue trim  '$(cmp --quiet <(printf x; cat "'"$file"'"; printf x) <((printf x; cat "'"$file"'"; printf x) | trim))'
}

# load and run shUnit2
test -n "${ZSH_VERSION:-}" && SHUNIT_PARENT=$0
. /usr/share/shunit2/shunit2
