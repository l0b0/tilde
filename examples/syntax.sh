#!/usr/bin/env bash
#
# Examples of syntax validation.

set -o errexit -o noclobber -o nounset -o pipefail

echo 'Bash -o noexec'

echo -n '* '
if bash -o noexec <<< 'does_not_exist' 2>/dev/null
then
    echo -n "Doesn't check"
else
    echo -n "Checks"
fi
echo ' whether commands exist.'

echo -n '* '
if bash -o noexec <<< 'source does_not_exist' 2>/dev/null
then
    echo -n "Doesn't check"
else
    echo -n "Checks"
fi
echo ' whether files exist.'

echo -n '* '
if bash -o noexec <<< '`' 2>/dev/null
then
    echo -n "Doesn't check"
else
    echo -n "Checks"
fi
echo ' whether backticks match up.'

echo -n '* '
if bash -o noexec <<< '"$(foo")' 2>/dev/null
then
    echo -n "Doesn't check"
else
    echo -n "Checks"
fi
echo ' whether $( and ) match up.'

echo -n '* '
if bash -o noexec <<< '#"$(foo")' 2>/dev/null
then
    echo -n "Doesn't check"
else
    echo -n "Checks"
fi
echo ' inside comments.'
