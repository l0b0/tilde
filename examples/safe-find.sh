#!/usr/bin/env bash
#
# *Filenames* can contain *any* character except only NUL (`$'\0'`) and slash
# (`/`); therefore, *paths* can contain any character except NUL. Here are some
# guidelines to handle them:
#
# Strings containing variables should always be double-quoted to avoid
# accidental word splitting. The only exception from this is the
# `[[ "var" =~ regex ]]` construct, where the `regex` string must not be quoted.
#
# `$'...'` can be used to create human readable strings with escape sequences.
# The complicated file name below is used to test that the code is able to
# handle several common filename issues.
#
# ` -- ` in commands is necessary to separate arguments from filenames, since
# filenames can start with `--`, and would therefore be handled as parameters.
# To handle parameters properly (like most *nix tools) use GNU `getopt` or the
# Bash built-in (but more limited) `getopts`.
#
# GNU `find` doesn't support the ` -- ` separator. This is only a problem if the
# search path is a relative path which *doesn't* start with `./` (since absolute
# paths by definition start with a slash, they are not a problem). If the
# application should support *any* filename, such paths have to be either
# converted into absolute paths by using readlink or by adding `./` to the start
# of relative paths.
#
# Variables inside `$()` have to be quoted just like outside this construct. No
# additional quoting or escaping is necessary.
#
# `read` usually strips characters in `$IFS` from the start and end of the
# resulting variable. Therefore `$IFS` must be emptied when reading a line.
#
# `read`'s `-r` argument avoids interpreting backslash in filenames specially.
#
# `read`'s `-d ''` argument splits the input by the null character.
#
# The `$()` and <code>\`\`</code> constructs *remove trailing newlines*. Getting
# the original string printed by the commands inside it is a simple matter of
# adding a single printable character after the last command and then remove it
# on the next line without using another `$()`.
#
# Use process substitution with `<(` instead of pipes to avoid broken pipes.
#
# `find`'s `-print0` argument separates the output by null characters.
#
# Use a file descriptor between 3 and 9 for data passing instead of standard
# input to avoid greedy commands like `cat` or `ssh` slurping all of it.
#
# As with all software ever, this comes with no warranty whatsoever. However,
# the code has been subjected to public scrutiny (and a bounty for a week)
# without anyone reporting an error
# <http://codereview.stackexchange.com/questions/1343/can-you-break-this-code>.
# If you find some way to break this code as described after the jump, please
# report it at <https://github.com/l0b0/tilde/issues>.

set -o errexit -o noclobber -o nounset -o pipefail

test_file_name=$'--$`\! *@ \a\b\E\f\r\t\v\\\"\' \n'
test_dir_path="$test_file_name"
test_file_path="${test_dir_path}/${test_file_name}"

mkdir -- "$test_dir_path"
touch -- "$test_file_path"

absolute_dir_path_x="$(readlink -fn -- "$test_dir_path"; echo x)"
absolute_dir_path="${absolute_dir_path_x%x}"

while IFS= read -r -d '' -u 9
do
    file_path="$(readlink -fn -- "$REPLY"; echo x)"
    file_path="${file_path%x}"
    echo "START${file_path}END"
done 9< <( find "$absolute_dir_path" -type f -print0 )

rm -- "$test_file_path"
rmdir -- "$test_dir_path"
