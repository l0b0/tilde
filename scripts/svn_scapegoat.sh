#!/bin/bash
# @param $1: Start revision
# @param $2: End revision
# @param $3: User
#
# Example: svn_scapegoat.sh 1000:HEAD jdoe

svn_changed()
{
    svn blame --revision $1:$2 -- $4 | grep -E "^ [0-9]* *${3} "
}

svn diff --revision $1:$2 --summarize | \
cut -c9- | \
while read path
do
    if [ -n "$(svn_changed $1 $2 $3 $path)" ]
    then
        echo "$3 changed $path"
    else
        echo "Someone else changed $path"
    fi
done
