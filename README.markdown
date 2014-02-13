Home directory scripts and configuration
========================================

[![Build Status](https://jenkins.engmark.name:8080/job/tilde/badge/icon)](https://jenkins.engmark.name:8080/job/tilde/)

These files are mostly my own settings and tools, but some may be more generally useful.

This will probably be moved to a separate project after a while:

* `scripts/duplicates.sh` - Check for duplicate files in two directories.

Install
-------

    git clone --recursive git://github.com/l0b0/tilde.git
    cd tilde
    make test # Optional
    make install # NOT as root
