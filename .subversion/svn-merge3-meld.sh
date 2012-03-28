#!/bin/sh
#
# NAME
#        svn-merge3-meld.sh - Meld wrapper for Subversion 3-way merge
#
# SYNOPSIS
#        svn-merge3-meld.sh BASE THEIRS MINE MERGED [PARTIAL]
#
# DESCRIPTION
#        This rearranges and prunes the parameters from Subversion to fit the
#        Meld synopsis. PARTIAL is not used by Meld, but is sent by
#        Subversion.
#
# INSTALL
#        Global install:
#        1. Make this script available in a global location:
#               sudo ln -s /path/to/svn-merge3-meld.sh /usr/bin/svn-merge3-meld
#        2. Add the following line in ~/.subversion/config:
#               merge-tool-cmd = /usr/bin/svn-merge3-meld
#
#        Single user install:
#        1. Add the following line in ~/.subversion/config (The path must be
#           absolute):
#               merge-tool-cmd = /path/to/svn-merge3-meld.sh
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# AUTHOR
#        Written by Victor Engmark
#
# COPYRIGHT
#        Copyright © 2011 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

meld "$3" "$1" "$2" "$4"
