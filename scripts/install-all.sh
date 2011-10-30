#!/bin/sh
# Last updated to Ubuntu 11.10

apt-get update

# Remove junk
apt-get remove -y ubuntuone-client

# Misc
apt-get install cloc sloccount
apt-get install compizconfig-settings-manager
apt-get install curl
apt-get install default-jre
apt-get install -y keepassx # keepass2 is not ready for production
apt-get install markdown
apt-get install openssh-server
apt-get install -y sun-java6-jre
update-java-alternatives -s java-6-sun
apt-get install sun-java6-fonts
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
apt-get install -y git-core
apt-get install git-gui
apt-get install -y meld
apt-get install subversion

# Graphics
apt-get install feh
apt-get install -y gimp
apt-get install gimp-help gimp-help-en
apt-get install hugin
apt-get install imagemagick
apt-get install imagemagick-doc
apt-get install inkscape
apt-get install jhead
apt-get install graphviz
apt-get install -y pngcrush
apt-get install python-pydot

# Database
apt-get install -y sqlite3
apt-get install sqlite3-doc

# Python
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
apt-get install python-lxml
apt-get install python-profiler
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
apt-get install build-essential

# Spell checking
apt-get install hunspell
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
apt-get install smplayer
apt-get install mplayer-doc
apt-get install vlc

# Games
apt-get install beneath-a-steel-sky
apt-get install dosbox
apt-get install flight-of-the-amazon-queen
apt-get install freeciv-client-sdl freeciv-sound-standard
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
apt-get install -y libfreetype6-dev libpng12-dev python-docutils
curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
pip install -U isodate
pip install -Uf http://garr.dl.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.0.1/matplotlib-1.0.1.tar.gz matplotlib

pip install -U filterous
pip install -U flickrapi
pip install -U mian

pip install -U -e git+git://github.com/l0b0/vCard-module.git#egg=vCard-module
