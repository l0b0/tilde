#!/bin/sh
# Last updated to Ubuntu 11.04
# Test: yes n | sudo install-all.sh >/dev/null

apt-get update

# Remove junk
apt-get remove -y ubuntuone-client

# Misc
apt-get install cloc sloccount
apt-get install compizconfig-settings-manager
apt-get install curl
apt-get install default-jre
apt-get install -y keepassx
apt-get install markdown
apt-get install openssh-server
apt-get install thunderbird
apt-get install -y unrar
apt-get install wine

# Email clients
apt-get install mutt
apt-get install thunderbird

# Email handling
apt-get install enscript
apt-get install imapfilter

# Editors
apt-get install gedit
apt-get install gedit-developer-plugins
apt-get install -y jedit
apt-get install -y vim

# Version control
apt-get install colordiff
apt-get install -y git-core
apt-get install git-gui
apt-get install gitk
apt-get install -y meld
apt-get install qgit
apt-get install subversion

# Graphics
apt-get install feh
apt-get install -y gimp
apt-get install hugin
apt-get install imagemagick
apt-get install imagemagick-doc
apt-get install inkscape
apt-get install jhead
apt-get install graphviz
apt-get install -y pngcrush
apt-get install python-pydot

# Desktop recording
apt-get install istanbul
apt-get install recordmydesktop
apt-get install xvidcap

# Virtualization
apt-get install virtualbox-ose
if egrep '(vmx|svm)' /proc/cpuinfo
then
    apt-get install kvm
else
    echo "Your machine doesn't support hardware virtualization" >&2
fi

# Database
apt-get install pgadmin3
apt-get install -y sqlite3
apt-get install sqlite3-doc

# Python
apt-get install python-epydoc
apt-get install epydoc-doc
apt-get install ipython
apt-get install libxml2-dev
apt-get install libxslt1-dev
apt-get install pep8
apt-get install pychecker
apt-get install pyflakes
apt-get install pylint
apt-get install python2.6-dev
apt-get install python2.6-doc
apt-get install python-dev
apt-get install python-doc
apt-get install python-epydoc
apt-get install python-lxml
apt-get install python-matplotlib
apt-get install python-numpy
apt-get install python-numpy-doc
apt-get install python-opengl
apt-get install python-profiler
apt-get install python-pygame
apt-get install python-setuptools

# LISP
apt-get install bison-doc
apt-get install clisp
apt-get install clisp-dev
apt-get install clisp-doc
apt-get install mit-scheme
apt-get install mit-scheme-dbg
apt-get install sbcl

# Compiling
apt-get install rpm

# Spell checking
apt-get install hunspell-de-ch
apt-get install hunspell-de-de
apt-get install hunspell-en-us
apt-get install hunspell-fr

# PDF
apt-get install pdftk
apt-get install xournal

# Entertainment
apt-get install comix
apt-get install flashplugin-nonfree
apt-get install gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad gstreamer0.10-plugins-base gstreamer0.10-plugins-ugly
apt-get install mplayer
apt-get install vlc

# Games
apt-get install beneath-a-steel-sky
apt-get install dosbox
apt-get install freeciv-client-sdl freeciv-sound-standard
apt-get install neverball
apt-get install nexuiz
apt-get install openarena
apt-get install sauerbraten
apt-get install scorched3d
apt-get install teeworlds
apt-get install wormux
apt-get install xmoto

# Aptitude cleanup
apt-get autoclean

# Configure default editors
update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor "$HOME/.jedit/shortcut.sh" 100
update-alternatives --set editor /usr/bin/vim.basic

if [ -e /usr/bin/wish8.5 ]
then
    update-alternatives --set wish /usr/bin/wish8.5
fi

# Own developments and requirements
apt-get install -y python-docutils python-pip
pip install -U filterous
pip install -U flickrapi
pip install -U mian
pip install isodate && pip install -U -e git+git://github.com/l0b0/vCard-module.git#egg=vCard-module
