#!/bin/sh
# Last updated to Ubuntu 10.10

apt-get update

# Version control
apt-get install colordiff git-completion git-core git-gui gitk meld subversion

# Python
apt-get install ipython libxml2-dev libxslt-dev pychecker pylint python-dev python-epydoc python-lxml python-setuptools

# Graphics
apt-get install gimp hugin inkscape jhead msttcorefonts pngcrush

# Dot
apt-get install graphviz python-pydot

# IDE
apt-get install eclipse

# PDF
apt-get install pdftk xournal

# Editors
apt-get install jedit vim

# Compiling
apt-get install rpm

# Database
apt-get install sqlite3

# Spell checking
apt-get install myspell-de-ch myspell-de-de myspell-en-us myspell-fr-fr myspell-nb

# Misc
apt-get install gnokii-cli keepassx openssh-server thunderbird

# Configure default editors
update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor "$HOME/.jedit/shortcut.sh" 100
update-alternatives --set editor /usr/bin/vim.basic

# Own developments
easy_install -U filterous mian selenium vcard-module
