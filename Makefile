PREFIX = $(HOME)

DOTFILES = $(wildcard .*rc) \
           $(wildcard .bash_*) \
           .gitconfig \
           .imapfilter \
           .signatures \
           .subversion \
           .Xresources

.PHONY: all
all: test

.PHONY: test
test:
	$(CURDIR)/tests/tests.sh

.PHONY: install
install:
	$(CURDIR)/scripts/make-links.sh -v $(addprefix $(CURDIR)/, $(DOTFILES)) $(PREFIX)

include tools.mk
