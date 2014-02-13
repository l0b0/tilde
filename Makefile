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

gpg_backup_path = $(PREFIX)/.gnupg/ownertrust.txt

signature_dat_files = $(patsubst %.sig,%.dat,$(wildcard .signatures/*.sig))

.PHONY: all
all: test

.PHONY: $(gpg_backup_path)
$(gpg_backup_path):
	gpg --export-ownertrust > "$@"

.PHONY: clean_comments
clean_comments:
	for path in $(PREFIX)/.gnupg/ownertrust.txt .jedit/properties .jedit/keymaps/imported_keys.props; do \
		if [ -e "$$path" ]; then \
			sed -i -e '/^#/D' -e 's/[[:space:]]\+#.*$$//g' "$$path" || exit 1; \
		fi \
	done

.PHONY: clean_line_endings
clean_line_endings:
	sed -i -e 's/ *$$/ /' .bash_history

.PHONY: clean_history_tags
clean_history_tags:
	sed -i -e 's/^\(\(man\|info\) [^#]\+\)$$/\1# help /' .bash_history

.PHONY: clean_x_resources
clean_x_resources:
	new_file=$$(mktemp) && \
		xrdb -query > "$$new_file" && \
		mv "$$new_file" .Xresources

.PHONY: clean_sort_text_files
clean_sort_text_files:
	for path in .config/ipython/profile_default/history.py $(PREFIX)/.gnupg/ownertrust.txt .jedit/properties .jedit/keymaps/imported_keys.props .bash_history; do \
		sort --unique --output="$$path" "$$path" || exit $$?; \
	done

$(signature_dat_files): %.dat : %.sig
	strfile $< $@

.PHONY: clean_signatures
clean_signatures: $(signature_dat_files)

.PHONY: clean_sqlite
clean_sqlite:
	for db_file in $(PREFIX)/.mozilla/*/*/*.sqlite; do \
		echo 'VACUUM;' | sqlite3 $$db_file || exit $$?; \
	done

.PHONY: clean
clean: $(gpg_backup_path) clean_comments clean_line_endings clean_history_tags clean_x_resources clean_sort_text_files clean_signatures clean_sqlite

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
