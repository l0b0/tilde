#!/bin/sh
# Usage:
#
# sudo mv __svn_ps1.sh /etc/bash_completion.d/svn
#
# Then the PS1 variable in ~/.bashrc:
#
# PS1="${PS1}\$(__svn_ps1 ' (%s)')"
#
# The format string at the end is optional.
#
# Based on the awesome __git_ps1.
#
# Explanation:
# `svn info` gets the branch and other information
# `sed -r` allows extended regular expressions
# If in trunk, just output "trunk". If anywhere else, output the next part of the path
#
# Tests:
# $ echo 'URL: http://example.org/svn/branches/SUCCESS/FAIL' | perl -pe 's;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;p'
# SUCCESS
# $ echo 'URL: http://example.org/svn/tags/SUCCESS/FAIL' | perl -pe 's;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;p'
# SUCCESS
# $ echo 'URL: http://example.org/svn/trunk/FAIL' | perl -pe 's;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;p'
# trunk
# $ echo 'URL: http://example.org/svn/tags/SUCCESS/tags/FAIL' | perl -pe 's;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;p'
# SUCCESS

__svn_ps1()
{
    local result=$(
        svn info 2>/dev/null | \
        grep '^URL: ' | \
        perl -pe 's;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;')
    if [ -n "$result" ]
    then
        printf "${1:- (%s)}" $result
    fi  
}
__svn_ps1 "$1"
