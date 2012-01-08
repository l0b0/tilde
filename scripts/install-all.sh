!/bin/sh
# Last updated to Linux Mint 12

apt-get update

# Misc
apt-get install cloc sloccount
apt-get install compizconfig-settings-manager
apt-get install curl
apt-get install -y keepassx # keepass2 is not ready for production
apt-get install markdown
apt-get install openssh-server
apt-get install wine

# Email clients
apt-get install mutt

# Email handling
apt-get install enscript
apt-get install imapfilter

# Editors
apt-get install -y jedit
apt-get install -y vim

# Version control
apt-get install -y git-core
apt-get install git-gui
apt-get install -y meld
apt-get install subversion

# Graphics
apt-get install feh
apt-get install gimp-help-en
apt-get install hugin
apt-get install imagemagick-doc
apt-get install inkscape
apt-get install jhead
apt-get install graphviz
apt-get install graphviz-doc
apt-get install -y pngcrush
apt-get install shotwell

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

# Compiling
apt-get install build-essential

# PDF
apt-get install pdftk
apt-get install xournal

# Entertainment
apt-get install comix
apt-get install ttf-bitstream-vera ttf-xfree86-nonfree
apt-get install smplayer
apt-get install mplayer-doc

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
apt-get install -y python-docutils
apt-get install python-pip
pip install pip --upgrade
pip install -U isodate
pip install -Uf http://garr.dl.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.0.1/matplotlib-1.0.1.tar.gz matplotlib

pip install -U filterous
pip install -U flickrapi
pip install -U mian

pip install -U -e git+git://github.com/l0b0/vCard-module.git#egg=vCard-module
