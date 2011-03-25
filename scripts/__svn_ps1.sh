#!/bin/sh
#
# NAME
#        __svn_ps1.sh - Get the current Subversion branch, tag or "trunk"
#
# SYNOPSIS
#        __svn_ps1.sh [FORMAT]
#
# DESCRIPTION
#        For use with the PS1 or other PS variables in Bash.
#
#        The FORMAT string at the end is optional. If present, it *must* contain
#        a valid printf format string including a '%s'. Default ' (%s)'.
#
#        Based on the awesome __git_ps1.
#
# INSTALLATION
#        Add the following line to ~/.bashrc:
#        PS1="${PS1}\$(__svn_ps1 ' (%s)')"
#
#        To enable for all users who have bash_completion:
#        $ sudo mv __svn_ps1.sh /etc/bash_completion.d/
#
#        If that doesn't work, or you prefer a single user installation, add
#        also the following line to ~/.bashrc:
#        source /path/to/__svn_ps1.sh
#
# COPYRIGHT
#        Copyright © 2010-2011 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

# Explanation:
# `svn info` gets the branch and other information
# `sed -r` allows extended regular expressions
# If in trunk, just output "trunk". If anywhere else, output the next part of the path
#
# Tests:
# $ echo 'URL: http://example.org/svn/branches/SUCCESS/FAIL' | perl -ne 'print if s;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;'
# SUCCESS
# $ echo 'URL: http://example.org/svn/tags/SUCCESS/FAIL' | perl -ne 'print if s;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;'
# SUCCESS
# $ echo 'URL: http://example.org/svn/trunk/FAIL' | perl -ne 'print if s;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;'
# trunk
# $ echo 'URL: http://example.org/svn/tags/SUCCESS/tags/FAIL' | perl -ne 'print if s;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;'
# SUCCESS

__svn_ps1()
{
    test -d '.svn' || return
    local result=$(
        svn info 2>/dev/null | \
        perl -ne 'print if s;^URL: .*?/((trunk)|(branches|tags)/([^/]*)).*;\2\4 ;')
    if [ -n "$result" ]
    then
        printf "${1:- (%s)}" $result
    fi
}
