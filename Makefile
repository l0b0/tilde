PREFIX = $(HOME)

DOTFILES = $(wildcard .*rc) \
           $(wildcard .bash_*) \
           .config \
           .gitattributes \
           .gitconfig \
           .imapfilter \
           .jedit \
           .profile \
           .quiltrc-dpkg \
           .screenlayout \
           .screenrc \
           .signatures \
           .vim \
           .xinitrc \
           .Xresources

.PHONY: all
all: test

.PHONY: clean
clean:
	$(CURDIR)/scripts/cleanup.sh --verbose

.PHONY: install
install:
	$(CURDIR)/scripts/make-links.sh -v $(addprefix $(CURDIR)/, $(DOTFILES)) $(PREFIX)

include make-includes/variables.mk
