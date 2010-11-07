#!/bin/sh

apt-get update

# Version control
apt-get install git-completion git-core git-gui gitk meld subversion

# Python
apt-get install ipython libxml2-dev libxslt-dev pychecker pylint python-dev python-epydoc python-lxml python-setuptools

# Graphics
apt-get install dia-gnome gimp hugin inkscape jhead msttcorefonts pngcrush

# Dot
apt-get install graphviz python-pydot

# IDE
apt-get install eclipse

# PDF
apt-get install pdftk

# Editors
apt-get install jedit vim

# Compiling
apt-get install rpm

# Misc
apt-get install gnokii-cli openssh-server

# Configure default editors
update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor "$HOME/.jedit/shortcut.sh" 100
update-alternatives --set editor /usr/bin/vim.basic

# Own developments
easy_install -U filterous mian selenium vcard-module
