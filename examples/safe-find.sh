#!/bin/bash
# Filenames can contain *any* character except only null (\0) and slash (/);
# here's some general rules to handle them:
#
# $'...' can be used to create human readable strings with escape sequences.
#
# ' -- ' in commands is necessary to separate arguments from filenames, since
# filenames can start with '--', and would therefore be handled as parameters.
# To handle parameters properly (like GNU tools) use `getopt`.
#
# `find` doesn't support this syntax, so we use `readlink` to get an absolute
# path which by definition starts with slash.
#
# The "$()" construct strips trailing newlines, so we have to add a different
# character and then strip it outside the "$()" construct.
#
# `IFS=` is necessary to avoid that any characters in IFS are stripped from
# the start and end of $path.
#
# '-r' avoids interpreting backslash in filenames specially.
#
# '-d ""' splits filenames by the null character.
#
# '-print0' separates find output by null characters.
#
# Variables inside '$()' have to be quoted just like outside this construct.
#
# Use process substitution with "<(" instead of pipes to avoid broken pipes.
#
# Use file descriptor 9 for data storage instead of standard input to avoid
# greedy commands like `cat` eating all of it.
#
# As with all software ever, this comes with no warranty whatsoever. However,
# the code has been subjected to public scrutiny (and a bounty for a week)
# without anyone reporting an error
# <http://codereview.stackexchange.com/questions/1343/can-you-break-this-code>.
# If you find some way to break this code as described after the jump, please
# send a message either there or at the GitHub issue tracker
# <https://github.com/l0b0/tilde/issues>.

set -o errexit
set -o nounset
set -o noclobber

test_file_name=$'--$`\! *@ \a\b\e\E\f\r\t\v\\\"\' \n'
test_dir_path="$test_file_name"
test_file_path="${test_dir_path}/${test_file_name}"

mkdir -- "$test_dir_path"
touch -- "$test_file_path"

absolute_dir_path_x="$(readlink -fn -- "$test_dir_path"; echo x)"
absolute_dir_path="${absolute_dir_path_x%x}"

exec 9< <( find "$absolute_dir_path" -type f -print0 )
while IFS= read -r -d '' -u 9
do
    file_path="$(readlink -fn -- "$REPLY"; echo x)"
    file_path="${file_path%x}"
    echo "START${file_path}END"
done

rm -- "$test_file_path"
rmdir -- "$test_dir_path"
