Home directory scripts and configuration
========================================

These files are mostly my own settings and tools, but some may be more generally useful.

These will probably be moved to separate projects after a while:

* `tools.mk` - Auxiliary `make` targets.
* `scripts/duplicates.sh` - Check for duplicate files in two directories.
* `scripts/make-links.sh` - Create symbolic links for several files in a separate directory, asking for confirmation or diffing if there is a collision.
* `scripts/__svn_ps1.sh` - Similar to [`__git_ps1.sh`](), provides a string usable in Bash's `$PS1` when sourced while inside a Subversion repository.

Install
-------

    git clone git://github.com/l0b0/tilde.git
    cd tilde
    git submodule update --init
    make test # Optional
    make install # NOT as root
