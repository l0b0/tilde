Home directory scripts and configuration
========================================

These files are mostly my own settings and tools, but some may be more generally useful.

Install
-------

    git clone --recursive git://github.com/l0b0/tilde.git
    cd tilde
    make install # NOT as root

You'll need to remove existing dot files for this to install successfully.

**Git users:** Make sure to add your user specific configuration in `~/.gitconfig_local`.

Test
----

Requirements: `markdown-calibre`

    make test # Optional
