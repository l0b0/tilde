#!/bin/sh
# Output error message
directory=$(dirname "$0")

. "$directory/functions.sh"

for name in "$@"
do
    if [ ! -r $name.tex ]
    then
        echo "$name.tex doesn't exist - Skipping" >&2
        continue
    fi

    # Remove all untracked files with the same name
    git clean -fX -- ./$name.* >/dev/null || error 'git clean failed'

    # Generate output
    pdflatex -halt-on-error $name >/dev/null || error 'pdflatex first pass failed'
    makeindex -q $name || error 'makeindex failed'
    bibtex -terse $name || error 'bibtex failed'
    pdflatex -halt-on-error $name >/dev/null || error 'pdflatex second pass failed'
    pdflatex -halt-on-error $name >/dev/null || error 'pdflatex third pass failed'
    pdflatex -halt-on-error $name || error 'pdflatex fourth pass failed'
done
