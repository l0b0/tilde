Home directory scripts and configuration
========================================

These files are mostly my own settings and tools, but some may be more generally useful.

These will probably be moved to separate projects after a while:

* `tools.mk` - Auxiliary `make` targets.
* `scripts/duplicates.sh` - Check for duplicate files in two directories.
* `scripts/make-links.sh` - Create symbolic links for several files in a separate directory, asking for confirmation or diffing if there is a collision.

Install
-------

    git clone --recursive git://github.com/l0b0/tilde.git
    cd tilde
    make test # Optional
    make install # NOT as root
