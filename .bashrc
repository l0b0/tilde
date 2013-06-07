# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "${PS1:-}" ] && return

#set -o xtrace -o errexit # Debug
set -o noclobber -o nounset -o pipefail
shopt -s nullglob

# Make sure all terminals save history
# Checks that PROMPT_COMMAND is not read-only
if unset PROMPT_COMMAND 2> /dev/null
then
    PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND-}"
fi

# don't put duplicate lines in the history
# don't save commands which start with a space
HISTCONTROL=ignoredups:erasedups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
LESS="--RAW-CONTROL-CHARS"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
    set +o nounset
    source /etc/bash_completion
    set -o nounset
fi
if [ -r ~/dev/tilde/scripts/__svn_ps1.sh ]
then
    source ~/dev/tilde/scripts/__svn_ps1.sh
fi

color_enabled() {
    local -i colors=$(tput colors 2>/dev/null)
    [ $? -eq 0 -a $colors -gt 2 ]
}

BOLD_FORMAT="${BOLD_FORMAT-$(color_enabled && tput bold)}"
ERROR_FORMAT="${ERROR_FORMAT-$(color_enabled && tput setaf 1)}"
WARNING_FORMAT="${WARNING_FORMAT-$(color_enabled && tput setaf 3)}"
INFO_FORMAT="${INFO_FORMAT-$(color_enabled && tput setaf 4)}"
RESET_FORMAT="${RESET_FORMAT-$(color_enabled && tput sgr0)}"

# Exit code
PS1='$(exit_code=$?; [ $exit_code -eq 0 ] || printf %s $BOLD_FORMAT $ERROR_FORMAT $exit_code $RESET_FORMAT " ")'

if [ "$USER" = 'root' ]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$ERROR_FORMAT\]\u\[$RESET_FORMAT\]'
elif [ -n "${SUDO_USER:-}" ]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]\u\[$RESET_FORMAT\]'
else
    PS1="$PS1"'\u'
fi

if [ ${SHLVL-0} -ne 1 ]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]'"^$SHLVL"'\[$RESET_FORMAT\]'
fi

PS1="${PS1}@"

if [ -n "${SSH_CONNECTION:-}" ]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]\h\[$RESET_FORMAT\]'
else
    PS1="$PS1"'\h'
fi

# Path separator
PS1="$PS1":

# Chroot jail path
if [ -e "/proc/$$/mountinfo" ]
then
    chroot="$(grep ^"$(head -1 /proc/$$/mountinfo | cut -d ' ' -f 1) " /proc/1/mountinfo | cut -d ' ' -f 5)"
    chroot="${chroot%"$(head -1 /proc/$$/mountinfo | cut -d ' ' -f 5)"}"
else
    chroot='[unknown chroot]'
fi
if [ -n "$chroot" ]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]'"$chroot"'\[$RESET_FORMAT\]'
fi

# Working directory, absolute path if we're in a chroot jail
PS1="$PS1"'\[$BOLD_FORMAT\]\[$INFO_FORMAT\]'
if [ -z "$chroot" ]
then
    PS1="$PS1"'\w'
else
    PS1="$PS1"'$PWD'
fi
PS1="$PS1"'\[$RESET_FORMAT\]'

case "$TERM" in
    xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
        PS1="$PS1"'\[\033]0;\u@\h:'"${chroot}"'${PWD}\007\]'
        ;;
    screen)
        PS1="$PS1"'\[\033_\u@\h:'"${chroot}"'${PWD}\033\\\'
        ;;
esac
unset chroot

# Git branch
if type -t __git_ps1 &>/dev/null
then
    PS1="$PS1"'$(__git_ps1 " (%s)")'
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUPSTREAM="auto"
fi

# Subversion branch
svn_prompt() {
    if ! type -t __svn_ps1 >/dev/null
    then
        return
    fi

    # Warn if you're not in the top directory of the checkout
    if [ -d ../.svn ]
    then
        __svn_ps1 ' ('${BOLD_FORMAT}${WARNING_FORMAT}%s${RESET_FORMAT}')'
    else
        __svn_ps1 ' (%s)'
    fi
}

PS1="$PS1"'$(svn_prompt)\n\$ '

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

# Load RVM into a shell session *as a function*
set +o nounset
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
set -o nounset
# Add RVM to PATH for scripting
if [ -d "$HOME/.rvm/bin" ]
then
    PATH="$PATH:$HOME/.rvm/bin"
fi

# Load perlbrew if present
if [ -r "$HOME/perl5/perlbrew/etc/bashrc" ]
then
    set +o nounset
    source "$HOME/perl5/perlbrew/etc/bashrc"
    set -o nounset
fi

# node.js and npm
if [ -d "$HOME/local/bin" ]
then
    export PATH="$HOME/local/bin:$PATH"
    export NODE_PATH=~/local/lib/node_modules
fi

# Custom-built libraries
for dir in /usr/lib64 /usr/lib32
do
    if [ -d "$dir" ]
    then
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH+${LD_LIBRARY_PATH}:}$dir"
    fi
done

export DEBFULLNAME="$(grep "^${USER}:" /etc/passwd | cut -d ':' -f 5 | cut -d ',' -f 1)"
export DEBEMAIL="$(tr A-Z a-z <<<"${DEBFULLNAME/ /@}").name"

set +o noclobber +o nounset +o pipefail
shopt -u nullglob

true
