PREFIX = $(HOME)
BASH = /usr/bin/bash
FIND = /usr/bin/find
GPG = /usr/bin/gpg
LN = /usr/bin/ln
MAKE = /usr/bin/make
MARKDOWN = /usr/bin/markdown
MKTEMP = /usr/bin/mktemp
MV = /usr/bin/mv
RM = /usr/bin/rm
RMDIR = /usr/bin/rmdir
SED = /usr/bin/sed
SORT = LANG=en_US.utf8 /usr/bin/sort
SQLITE = /usr/bin/sqlite3
STRFILE = /usr/bin/strfile
WC = /usr/bin/wc
XRDB = /usr/bin/xrdb

dotfiles = .ackrc \
           .bash_history \
           .bashrc \
           .color \
           .config \
           .gitattributes \
           .gitconfig \
           .imapfilter \
           .inputrc \
           .kde4 \
           .offlineimaprc \
           .perltidyrc \
           .profile \
           .quiltrc-dpkg \
           .screenlayout \
           .screenrc \
           .stellarium \
           .signatures \
           .toprc \
           .vim \
           .vimrc \
           .xprofile \
           .Xmodmap \
           .Xresources

dotfile_links = $(addprefix $(PREFIX)/,$(dotfiles))

gpg_configuration_path = $(PREFIX)/.gnupg
gpg_trust_database_path = $(gpg_configuration_path)/trustdb.gpg
gpg_backup_path = $(gpg_configuration_path)/ownertrust.txt

signature_dat_files = $(patsubst %.sig,%.dat,$(wildcard .signatures/*.sig))

.PHONY: all
all: test

.PHONY: $(gpg_backup_path)
$(gpg_backup_path):
	if [ -e "$(gpg_trust_database_path)" ]; then \
		$(GPG) --export-ownertrust > "$@" || exit $$?; \
	fi

.PHONY: clean_comments
clean_comments:
	for path in $(PREFIX)/.gnupg/ownertrust.txt; do \
		if [ -e "$$path" ]; then \
			$(SED) -i -e '/^#/D' -e 's/[[:space:]]\+#.*$$//g' "$$path" || exit 1; \
		fi \
	done

.PHONY: clean_line_endings
clean_line_endings:
	$(SED) -i -e 's/ *$$/ /' .bash_history

.PHONY: clean_history_tags
clean_history_tags:
	$(SED) -i -e 's/^\(\(man\|info\) [^#]\+\)$$/\1# help /' .bash_history

.PHONY: clean_x_resources
clean_x_resources:
	new_file=$$($(MKTEMP)) && \
		$(XRDB) -query > "$$new_file" && \
		$(MV) "$$new_file" .Xresources

.PHONY: clean_sort_text_files
clean_sort_text_files:
	for path in .config/ipython/profile_default/history.py $(PREFIX)/.gnupg/ownertrust.txt .bash_history .config/darktable/keyboardrc_default; do \
		$(SORT) --unique --output="$$path" "$$path" || exit $$?; \
	done

$(signature_dat_files): %.dat : %.sig
	$(STRFILE) $< $@

.PHONY: clean_signatures
clean_signatures: $(signature_dat_files)

.PHONY: clean_sqlite
clean_sqlite:
	for db_file in $(PREFIX)/.mozilla/*/*/*.sqlite; do \
		echo 'VACUUM;' | $(SQLITE) $$db_file || (echo "Vacuuming file failed: $$db_file"; exit 1) \
	done

.PHONY: clean
clean: $(gpg_backup_path) clean_comments clean_line_endings clean_history_tags clean_x_resources clean_sort_text_files clean_signatures clean_sqlite

.PHONY: uninstall
uninstall:
	for path in $(dotfile_links); do \
		if [ -L $$path ]; then \
			$(RM) --verbose $$path || exit $$?; \
		fi \
	done

.PHONY: test
test:
	$(BASH) -o noexec .bash_history
	dir="$$($(MKTEMP) -d)" && \
		$(MAKE) dotfiles=.gitconfig PREFIX="$$dir" install && \
		[ $$($(FIND) "$$dir" -mindepth 1 -type l -name .gitconfig | $(WC) -l) -eq 1 ] && \
		$(MAKE) dotfiles=.gitconfig PREFIX="$$dir" uninstall && \
		[ $$($(FIND) "$$dir" -mindepth 1 -type l -name .gitconfig | $(WC) -l) -eq 0 ] && \
		$(RMDIR) "$$dir"
	$(MARKDOWN) README.markdown > /dev/null
	$(MARKDOWN) doc/keyboard-shortcuts.md > /dev/null

$(dotfile_links): $(addprefix $(PREFIX)/,%) : $(addprefix $(CURDIR)/,%)
	$(LN) --verbose --symbolic --no-target-directory $< $@

.PHONY: dotfiles
dotfiles: $(dotfile_links)

.PHONY: install
install: dotfiles

include make-includes/variables.mk
