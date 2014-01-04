PREFIX = $(HOME)

DOTFILES = .ackrc \
           .bash_history \
           .bashrc \
           .config \
           .gitattributes \
           .gitconfig \
           .imapfilter \
           .inputrc \
           .jedit \
           .muttrc \
           .offlineimaprc \
           .perltidyrc \
           .profile \
           .quiltrc-dpkg \
           .screenlayout \
           .screenrc \
           .signatures \
           .toprc \
           .vim \
           .vimrc \
           .xinitrc \
           .Xmodmap \
           .Xresources

.PHONY: all
all: test

.PHONY: clean
clean:
	$(CURDIR)/scripts/cleanup.sh --verbose

.PHONY: test
test:
	markdown README.markdown > /dev/null
	markdown doc/keyboard-shortcuts.md > /dev/null

.PHONY: install
install:
	$(CURDIR)/scripts/make-links.sh -v $(addprefix $(CURDIR)/, $(DOTFILES)) $(PREFIX)

include make-includes/variables.mk
