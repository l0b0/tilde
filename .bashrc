# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Make sure all terminals save history
PROMPT_COMMAND="history -a;"

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x /usr/bin/lesspipe ]
then
    eval "$(SHELL=/bin/sh lesspipe)"
fi

# Set prompt
source ~/.bash_prompt
PROMPT_COMMAND="bash_prompt; ${PROMPT_COMMAND}"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
    . /etc/bash_completion
fi

# Default editor
export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'

# Java
export JAVA_HOME='/usr/'

# OpenOffice.org
export MOZILLA_CERTIFICATE_FOLDER="$HOME/.mozilla/firefox/Default"

if [ -r "$HOME/.bashrc_local" ]
then
    source "$HOME/.bashrc_local"
fi

if [ -r "$HOME/.bash_aliases" ]
then
    source "$HOME/.bash_aliases"
fi
