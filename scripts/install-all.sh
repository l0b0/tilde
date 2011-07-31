#!/bin/sh
# Last updated to Ubuntu 11.04
# Test: yes n | sudo install-all.sh >/dev/null

apt-get update

# Misc
apt-get install default-jre gnokii-cli keepassx markdown openssh-server thunderbird unrar

# Editors
apt-get install gedit gedit-developer-plugins jedit vim

# Version control
apt-get install colordiff git-completion git-core git-gui gitk meld qgit subversion

# Graphics
apt-get install gimp hugin imagemagick imagemagick-doc inkscape jhead pngcrush graphviz python-pydot

# Database
apt-get install sqlite3 sqlite3-doc

# Python
apt-get install epydoc-doc ipython libxml2-dev libxslt-dev pep8 pychecker pyflakes pylint python2.6-dev python2.6-doc python-dev python-doc python-epydoc python-lxml python-matplotlib python-numpy python-numpy-doc python-opengl python-profiler python-pygame python-setuptools

# LISP
apt-get install mit-scheme mit-scheme-dbg

# Compiling
apt-get install rpm

# Spell checking
apt-get install myspell-de-ch myspell-de-de myspell-en-us myspell-fr-fr myspell-nb

# PDF
apt-get install pdftk xournal

# Entertainment
apt-get install gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad gstreamer0.10-plugins-base gstreamer0.10-plugins-ugly mplayer vlc flashplugin-nonfree

# Games
apt-get install beneath-a-steel-sky freeciv-client-sdl freeciv-sound-standard neverball nexuiz openarena sauerbraten scorched3d teeworlds wormux xmoto

# Aptitude cleanup
apt-get autoclean

# Configure default editors
update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor "$HOME/.jedit/shortcut.sh" 100
update-alternatives --set editor /usr/bin/vim.basic

# Own developments
easy_install -U filterous flickrapi mian vcard-module
