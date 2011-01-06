# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Make sure all terminals save history
if [ -z "$PROMPT_COMMAND" ]
then
    PROMPT_COMMAND="history -a;"
fi

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

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
    . /etc/bash_completion
fi

# Set prompt
unset PS1

# Color support detection from Ubuntu
if [ -x /usr/bin/tput ]
then
    reset='\[\e[0m\]'
    red='\[\e[1;31m\]'
    green='\[\e[1;32m\]'
    orange='\[\e[1;33m\]'
    blue='\[\e[1;34m\]'
fi

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]
then
    debian_chroot=$(cat /etc/debian_chroot)
elif [ -r /etc/jail ]
then
    debian_chroot=$(cat /etc/jail)
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
    ps1_command="__git_ps1 ' (%s)'"
fi

# Subversion branch
if [ -f /etc/bash_completion.d/svn ]
then
    ps1_command="__svn_ps1 ' (%s)'
    ${ps1_command}"
fi

# Exit code of the last command
ps1_command="exit_code=\$?
${ps1_command}
if [ \$exit_code -ne 0 ]
then
    printf \"${red}\\n\${exit_code} \\\$${reset}\"
else
    printf \"\\n\\\$\"
fi"

PS1="${PS1}\$(${ps1_command}) "

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
