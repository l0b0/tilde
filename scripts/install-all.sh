#!/bin/sh
# Last updated to Ubuntu 10.10

apt-get update

# Misc
apt-get install gnokii-cli keepassx openssh-server thunderbird

# Editors
apt-get install jedit vim

# Version control
apt-get install colordiff git-completion git-core git-gui gitk meld subversion

# Graphics
apt-get install gimp hugin inkscape jhead pngcrush graphviz python-pydot

# Database
apt-get install sqlite3

# Python
apt-get install ipython libxml2-dev libxslt-dev pep8 pychecker pylint python-dev python-epydoc python-lxml python-matplotlib python-setuptools

# Compiling
apt-get install rpm

# Spell checking
apt-get install myspell-de-ch myspell-de-de myspell-en-us myspell-fr-fr myspell-nb

# PDF
apt-get install pdftk xournal

# Entertainment
apt-get install gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad gstreamer0.10-plugins-base gstreamer0.10-plugins-ugly vlc

# Aptitude cleanup
apt-get autoclean

# Configure default editors
update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor "$HOME/.jedit/shortcut.sh" 100
update-alternatives --set editor /usr/bin/vim.basic

# Own developments
easy_install -U filterous mian vcard-module
