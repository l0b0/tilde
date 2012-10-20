#!/usr/bin/env bash
#
# Examples to see the differences in word splitting when using different values
# for the internal field separator.

set -o errexit -o noclobber -o nounset -o pipefail

printf %s 'IFS: '
printf %q "${IFS-}"
echo
echo
for params in 'a' 'a b c' ' a b c ' '  a  b  c  '
do
    echo "'$params' is expanded to:"
    for param in $params
    do
        echo "[${param}]"
    done
    echo
done

IFS=-
printf %s 'IFS: '
printf %q "${IFS-}"
echo
echo
for params in 'a' 'a-b-c' '-a-b-c-' '--a--b--c--'
do
    echo "'$params' is expanded to:"
    for param in $params
    do
        echo "[${param}]"
    done
    echo
done
