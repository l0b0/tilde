#!/bin/bash
#
# NAME
#    ubuntu-setup.sh - Install software and configure new Ubuntu install
#
# SYNOPSIS
#    ubuntu-setup.sh
#
# DESCRIPTION
#    Installs & configures Ubuntu after a new install.
#
# COPYRIGHT AND LICENSE
#    Copyright (C) 2008-2010 Victor Engmark
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

error()
{
    test -t 1 && {
		tput setf 4
		echo "$1" >&2
		tput setf 7
	} || echo "$1" >&2
    if [ -z "$2" ]
    then
        exit $EX_UNKNOWN
    else
        exit $2
    fi
}

usage()
{
    error "Usage: `basename $0`" $EX_USAGE
}

initialize()
{
    PATH="/usr/bin:/bin"
    packages="git-completion git-core git-gui gitk gnokii-cli jabber jedit jhead keepassx libxml2-dev libxslt-dev meld myspell-de-ch myspell-de-de myspell-en-gb myspell-en-us myspell-fr-fr myspell-nb openssh-server sqlite3 subversion thunderbird vim"

    # Exit codes from /usr/include/sysexits.h, as recommended by
    # http://www.faqs.org/docs/abs/HTML/exitcodes.html
    EX_USAGE=64

    if [ $# -ne 0 ]
    then
        usage
    fi
}

setup_directories()
{
    # Remove empty directories
    rmdir ~/*

    # Set up standard directories
    mkdir ~/download ~/src ~/photos
}

clean_packages()
{
    # Start with some clean-up
    sudo apt-get update
    sudo apt-get autoclean
    sudo apt-get autoremove
}

install_packages()
{
    # Install useful software
    for package in $packages
    do
        sudo apt-get install --assume-yes "$package"
        error_code=$?
        if [ $error_code -ne 0 ]
        then
            error "Could not install package" $error_code
        fi
    done
}

# Run
initialize
clean_packages
install_packages
exit 0
