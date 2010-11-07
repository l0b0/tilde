#!/bin/bash
# Create symlinks to all dot files in another directory

directory=$(dirname $(readlink -f $0))

. "$directory/functions.sh"

if [ ! -d "$1" ]
then
    error "Not a directory: $1"
fi

if [ ! -d "$2" ]
then
    error "Not a directory: $2"
fi

file_dir=$(readlink -f "$1")
link_dir=$(readlink -f "$2")

echo "Creating symlinks to $file_dir in $link_dir"

find $file_dir -maxdepth 1 -name ".*" -print0 | while read -r -d $'\0' path
do
    echo "Creating symlink $path -> $link_path"
    filename=$(basename "$path")
    link_path="$link_dir/$filename"
    if [ -L "$link_path" ]
    then
        rm "$link_path"
    fi
    ln -s $path $link_dir
done
