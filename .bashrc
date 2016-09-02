#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#set -o xtrace -o errexit # Debug
set -o noclobber -o nounset -o pipefail
shopt -s nullglob

# Make sure all terminals save history
PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND-}"

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
[[ -x /usr/bin/lesspipe ]] && eval "$(SHELL=/bin/sh lesspipe)"
LESS="--RAW-CONTROL-CHARS"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [[ -f /etc/bash_completion ]] && ! shopt -oq posix
then
    set +o nounset
    source /etc/bash_completion
    set -o nounset
fi

color_enabled() {
    local -i colors=$(tput colors 2>/dev/null)
    [[ $? -eq 0 ]] && [[ $colors -gt 2 ]]
}

BOLD_FORMAT="${BOLD_FORMAT-$(color_enabled && tput bold)}"
ERROR_FORMAT="${ERROR_FORMAT-$(color_enabled && tput setaf 1)}"
WARNING_FORMAT="${WARNING_FORMAT-$(color_enabled && tput setaf 3)}"
INFO_FORMAT="${INFO_FORMAT-$(color_enabled && tput setaf 4)}"
RESET_FORMAT="${RESET_FORMAT-$(color_enabled && tput sgr0)}"

# Remove old prompt
PS1=

# Exit code
# Also push the prompt to the bottom of the terminal (need to take off 1 to account for two-line prompt)
PS1="$PS1"'$(exit_code=$?; tput cup "$(($LINES - 1))" 0; [[ $exit_code -eq 0 ]] || printf %s \[$BOLD_FORMAT\] \[$ERROR_FORMAT\] $exit_code \[$RESET_FORMAT\] " ")'

if [[ "$USER" = 'root' ]]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$ERROR_FORMAT\]\u\[$RESET_FORMAT\]'
elif [[ -n "${SUDO_USER:-}" ]]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]\u\[$RESET_FORMAT\]'
else
    PS1="$PS1"'\u'
fi

if [[ ${SHLVL-0} -ne 1 ]]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]'"^$SHLVL"'\[$RESET_FORMAT\]'
fi

PS1="${PS1}@"

if [[ -n "${SSH_CONNECTION:-}" ]]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]\h\[$RESET_FORMAT\]'
else
    PS1="$PS1"'\h'
fi

# Path separator
PS1="$PS1":

# Chroot jail path
if [[ -e "/proc/$$/mountinfo" ]]
then
    chroot="$(grep ^"$(head -1 /proc/$$/mountinfo | cut -d ' ' -f 1) " /proc/1/mountinfo | cut -d ' ' -f 5)"
    chroot="${chroot%"$(head -1 /proc/$$/mountinfo | cut -d ' ' -f 5)"}"
else
    chroot='[unknown chroot]'
fi
if [[ -n "$chroot" ]]
then
    PS1="$PS1"'\[$BOLD_FORMAT\]\[$WARNING_FORMAT\]'"$chroot"'\[$RESET_FORMAT\]'
fi

# Working directory, absolute path if we're in a chroot jail
PS1="$PS1"'\[$BOLD_FORMAT\]\[$INFO_FORMAT\]'
if [[ -z "$chroot" ]]
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
if ! type -t __git_ps1 &> /dev/null && [ -e /usr/share/git/completion/git-prompt.sh ]
then
    source /usr/share/git/completion/git-prompt.sh
fi
if type -t __git_ps1 &>/dev/null
then
    PS1="$PS1"'$(__git_ps1 " (%s)")'
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUPSTREAM="auto"
fi

# Prompt end
PS1="$PS1"$'\n$ '

# Default editor
export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'

# OpenOffice.org
export MOZILLA_CERTIFICATE_FOLDER="$HOME/.mozilla/firefox/Default"

# enable color support
if [[ -x /usr/bin/dircolors ]]
then
    if [[ -r "$HOME/.dircolors" ]]
    then
        eval "$(dircolors -b "$HOME/.dircolors")"
    else
        eval "$(dircolors -b)"
    fi
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

for path in "${HOME}/.gem/ruby/"*"/bin"
do
    if [[ -e "$path" ]] && ! [[ ":${PATH}:" = *":${path}:"* ]]
    then
        PATH="${PATH}:${path}"
    fi
done

# some more ls aliases
alias l='ls' # Default
alias la='ls -hlA' # Full info
alias lsd='ls -hlt' # List sorted by modification time

# Use vim, not vi
alias vi=vim

# Paste with Ctrl-Alt-e
alias pc='$(xclip -display :0 -out)'

# Avoid Bash autocompletion tilde expansion
_expand(){ true; }
__expand_tilde_by_ref(){ true; }

if [[ -r "$HOME/.bashrc_local" ]]
then
    source "$HOME/.bashrc_local"
fi

set +o noclobber +o nounset +o pipefail
shopt -u nullglob

true
