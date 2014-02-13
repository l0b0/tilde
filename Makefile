PREFIX = $(HOME)

dotfiles = .ackrc \
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

dotfile_links = $(addprefix $(PREFIX)/,$(dotfiles))

.PHONY: all
all: test

.PHONY: clean
clean:
	$(CURDIR)/scripts/cleanup.sh --verbose

.PHONY: uninstall
uninstall:
	for path in $(dotfile_links); do \
		if [ -L $$path ]; then \
			rm --verbose $$path || exit $$?; \
		fi \
	done

.PHONY: test
test:
	bash -o noexec .bash_history
	dir="$$(mktemp -d)" && \
		make dotfiles=.gitconfig PREFIX="$$dir" install && \
		[ $$(find "$$dir" -mindepth 1 -type l -name .gitconfig | wc -l) -eq 1 ] && \
		make dotfiles=.gitconfig PREFIX="$$dir" uninstall && \
		[ $$(find "$$dir" -mindepth 1 -type l -name .gitconfig | wc -l) -eq 0 ] && \
		rmdir "$$dir"
	markdown README.markdown > /dev/null
	markdown doc/keyboard-shortcuts.md > /dev/null

$(dotfile_links): $(addprefix $(PREFIX)/,%) : $(addprefix $(CURDIR)/,%)
	ln --verbose --symbolic $< $@

.PHONY: dotfiles
dotfiles: $(dotfile_links)

.PHONY: install
install: dotfiles

include make-includes/variables.mk
