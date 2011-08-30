#!/bin/sh
# Last updated to Ubuntu 11.04
# Test: yes n | sudo install-all.sh >/dev/null

apt-get update

# Remove junk
apt-get remove ubuntuone-client

# Misc
apt-get install default-jre gnokii-cli keepassx markdown openssh-server thunderbird unrar wine

# Email clients
apt-get mutt thunderbird

# Email handling
apt-get install enscript imapfilter

# Editors
apt-get install gedit gedit-developer-plugins jedit vim

# Version control
apt-get install colordiff git-completion git-core git-gui gitk meld qgit subversion

# Graphics
apt-get install feh gimp hugin imagemagick imagemagick-doc inkscape jhead pngcrush graphviz python-pydot

# Desktop recording
apt-get install istanbul recordmydesktop xvidcap

# Virtualization
apt-get install virtualbox-ose
if egrep '(vmx|svm)' /proc/cpuinfo
then
    apt-get install kvm
else
    echo "Your machine doesn't support hardware virtualization" >&2
fi

# Database
apt-get install pgadmin3 sqlite3 sqlite3-doc

# Python
apt-get install epydoc epydoc-doc ipython libxml2-dev libxslt-dev pep8 pychecker pyflakes pylint python2.6-dev python2.6-doc python-dev python-doc python-epydoc python-lxml python-matplotlib python-numpy python-numpy-doc python-opengl python-profiler python-pygame python-setuptools

# LISP
apt-get install bison-doc clisp clisp-dev clisp-doc mit-scheme mit-scheme-dbg sbcl

# Compiling
apt-get install rpm

# Spell checking
apt-get install myspell-de-ch myspell-de-de myspell-en-us myspell-fr-fr myspell-nb

# PDF
apt-get install pdftk xournal

# Entertainment
apt-get install comix gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad gstreamer0.10-plugins-base gstreamer0.10-plugins-ugly mplayer vlc flashplugin-nonfree

# Games
apt-get install beneath-a-steel-sky dosbox freeciv-client-sdl freeciv-sound-standard neverball nexuiz openarena sauerbraten scorched3d teeworlds wormux xmoto

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
apt-get install python-pip python-matplotlib && pip install -U isodate && pip install -U filterous flickrapi mian && pip install -U -e git+git://github.com/l0b0/vCard-module.git#egg=vCard-module
