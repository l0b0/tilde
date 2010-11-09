# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Make sure all terminals save history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
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
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Color support detection from Ubuntu
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
then
    reset='\[\e[0m\]'
    red='\[\e[1;31m\]'
    green='\[\e[1;32m\]'
    orange='\[\e[1;33m\]'
    blue='\[\e[1;34m\]'
fi

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1="${orange}\${debian_chroot:+(\$debian_chroot)}${reset}"

# Red user if root, orange if su
if [ "$USER" == 'root' ]
then
    PS1="$PS1$red"
elif [ -n "$SUDO_USER" ]
then
    PS1="$PS1$orange"
else
    PS1="$PS1$green"
fi
PS1="${PS1}\u${reset}@"

# Red host if SSH
if [ -n "$SSH_CONNECTION" ]
then
    PS1="$PS1$red"
else
    PS1="$PS1$green"
fi
PS1="${PS1}\h${reset}:${blue}\w${reset}"


# Git branch
if [ -f /etc/bash_completion.d/git ]
then
    PS1="${PS1}\$(__git_ps1 ' (%s)')"
fi

# PS1 end
if [ "$USER" = 'root' ]
then
    separator='#'
else
    separator='$'
fi
PS1="${PS1}${separator} "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Default editor
export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'

# Java
export JAVA_HOME='/usr/'

# OpenOffice.org
export MOZILLA_CERTIFICATE_FOLDER="$HOME/settings/Firefox/Profile"
