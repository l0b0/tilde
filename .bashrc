# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "${PS1:-}" ] && return

# Make sure all terminals save history
[ -z "${PROMPT_COMMAND:-}" ] && PROMPT_COMMAND="history -a;"

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

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
    source /etc/bash_completion
fi
if [ -r ~/dev/tilde/scripts/__svn_ps1.sh ]
then
    source ~/dev/tilde/scripts/__svn_ps1.sh
fi

highlight()
{
    if [ -x /usr/bin/tput ]
    then
        tput bold
        tput setaf $1
    fi
    shift
    printf -- "$@"
    if [ -x /usr/bin/tput ]
    then
        tput sgr0
    fi
}

highlight_error()
{
    highlight 1 "$@"
}

highlight_warning()
{
    highlight 3 "$@"
}

highlight_info()
{
    highlight 4 "$@"
}

# Exit code
PS1="\$(exit_code=\$?
if [ \$exit_code -ne 0 ]
then
    printf \"\$(highlight_error \"\${exit_code} \")\"
fi)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" -a -r /etc/debian_chroot ]
then
    debian_chroot="$(cat /etc/debian_chroot)"
elif [ -r /etc/jail ]
then
    debian_chroot="$(cat /etc/jail)"
else
    root_inode=$(stat -c %i /)
    if [ $root_inode -ne 2 -a $root_inode -ne 128 ]
    then
        # Non-standard root inode
        debian_chroot="unknown chroot"
    fi
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1="${PS1}$(highlight_warning "\${debian_chroot:+(\$debian_chroot) }")"

if [ "$USER" == 'root' ]
then
    PS1="${PS1}$(highlight_error '\u')"
elif [ -n "${SUDO_USER:-}" ]
then
    PS1="${PS1}$(highlight_warning '\u')"
else
    PS1="${PS1}\u"
fi
PS1="${PS1}@"

if [ -n "${SSH_CONNECTION:-}" ]
then
    PS1="${PS1}$(highlight_warning '\h')"
else
    PS1="${PS1}\h"
fi
PS1="${PS1}:$(highlight_info '\w')"

# Git branch
if [ -f /etc/bash_completion.d/git ]
then
    ps1_command="__git_ps1 ' (%s)'"
fi

# Subversion branch
if type -t __svn_ps1 >/dev/null
then
    ps1_command="__svn_ps1 ' (%s)'
    ${ps1_command:-}"
fi

PS1="${PS1}\$(${ps1_command})\n\\\$ "

# Clean up
unset ps1_command

# Default editor
export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'

# Java
export JAVA_HOME='/usr/'

# OpenOffice.org
export MOZILLA_CERTIFICATE_FOLDER="$HOME/.mozilla/firefox/Default"

if [ -r "$HOME/.bash_aliases" ]
then
    source "$HOME/.bash_aliases"
fi

if [ -r "$HOME/.bashrc_local" ]
then
    source "$HOME/.bashrc_local"
fi

# Avoid Bash autocompletion tilde expansion
_expand(){ true; }
__expand_tilde_by_ref(){ true; }
