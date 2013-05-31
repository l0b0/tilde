PREFIX = $(HOME)

DOTFILES = $(wildcard .*rc) \
           $(wildcard .bash_*) \
           .config \
           .gitconfig \
           .imapfilter \
           .ipython \
           .jedit \
           .profile \
           .quiltrc-dpkg \
           .screenlayout \
           .screenrc \
           .signatures \
           .subversion \
           .vim \
           .Xresources

.PHONY: all
all: test

.PHONY: clean
clean:
	$(CURDIR)/scripts/cleanup.sh --verbose

.PHONY: test
test:
	$(CURDIR)/tests/tests.sh

.PHONY: install
install:
	$(CURDIR)/scripts/make-links.sh -v $(addprefix $(CURDIR)/, $(DOTFILES)) $(PREFIX)

include tools.mk
