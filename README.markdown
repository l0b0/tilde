Home directory scripts and configuration
========================================

[![Build Status](https://travis-ci.org/l0b0/tilde.svg?branch=master)](https://travis-ci.org/l0b0/tilde)

These files are mostly my own settings and tools, but some may be more generally useful.

This will probably be moved to a separate project after a while:

* `scripts/duplicates.sh` - Check for duplicate files in two directories.

Install
-------

    git clone --recursive git://github.com/l0b0/tilde.git
    cd tilde
    make install # NOT as root

**Git users:** Make sure to add your user specific configuration in `~/.gitconfig_local`.

Test
----

Requirements: `markdown`

    make test # Optional
