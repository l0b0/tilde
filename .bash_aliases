# enable color support
if [ -x /usr/bin/dircolors ]
then
    if [ -r $HOME/.dircolors ]
    then
        eval "$(dircolors -b $HOME/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias l='ls' # Default
alias la='ls -hlA' # Full info
alias lsd='ls -hlt' # List sorted by modification time

# Human readable disk usage
alias du='du -h'
alias df='df -h'

# Update everything
alias upgrade='sudo sh -c "aptitude update;aptitude dist-upgrade;aptitude autoclean"'

# Play ISO file of DVD
alias play-iso-dir='mplayer -dvd-device dvd:// -slang en' # dir

alias fgit='$HOME/dev/fgit/fgit.sh'

# Subversion
alias svndiff='svn diff "$@" | colordiff'

# Git
mkgithub()
{
    if [ ! -e "$1" ]
    then
        mkdir "$1"
    fi
    cd "$1"

    if [ ! -e '.git' ]
    then
        git init
    fi

    local repo="$(basename -- "$1")"
    git remote add origin "git@github.com:l0b0/${repo}.git"

    git config push.default matching && \
    git config branch.master.remote origin && \
    git config branch.master.merge refs/heads/master && \
    git config merge.conflictstyle diff3
}

verify_all() # $1 dir
{
    local success
    find "$1" -type f -not -name "*.asc" -not -name "*.md5" -not -name "*.pgp" -print0 | \
    while read -r -d $'\0' -- path
    do
        echo "Verifying $path"
        success=0
        if [ -e "${path}.asc" ]
        then
            gpg --verify "${path}.asc" || exit 1
            success=1
        fi
        if [ -e "${path}.sig" ]
        then
            gpg --verify "${path}.sig" || exit 1
            success=1
        fi
        if [ -e "${path}.md5" ]
        then
            md5sum -c "${path}.md5" || exit 1
            success=1
        fi

        if [ $success -eq 0 ]
        then
            echo 'No signatures found; fallback to MD5'
            md5sum "$path"
        fi
    done
}

# Terminal settings
alias xterm-settings='xrdb -merge ~/.Xresources'

if [ -r "$HOME/.bash_aliases_local" ]
then
    source "$HOME/.bash_aliases_local"
fi
