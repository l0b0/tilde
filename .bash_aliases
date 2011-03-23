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
alias upgrade='sudo sh -c "apt-get update;apt-get dist-upgrade;apt-get autoclean"'

# Play ISO file of DVD
alias play-iso-dir='mplayer -dvd-device dvd:// -slang en' # dir

alias fgit='$HOME/dev/fgit/fgit.sh'

# Subversion
svndiff()
{
    svn diff "$@" | colordiff
}

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

git-tar()
{
    # @param $1: Commit-like
    # @param $2: Name of output file (without extension)
    git archive --format=tar --prefix="${2}/" "$1" | gzip > "${2}.tar.gz"
}

# Terminal settings
alias xterm-settings='xrdb -merge ~/.Xresources'

if [ -r "$HOME/.bash_aliases_local" ]
then
    source "$HOME/.bash_aliases_local"
fi

smb_ls()
{
    # @param $1: Hostname
    sudo smbclient -A /etc/auto.cifs.$1 -gL $1 2>/dev/null | grep '^Disk|' | cut -d '|' -f 2
}

smb_mount_all()
{
    # Mount all available Samba shares read-only
    # @param $1: Hostname
    while IFS= read -rd $'\n' dir
    do
        dir_escaped="$(printf %q "$dir")"
        sudo mkdir -p -- "/mnt/${dir_escaped}"
        sudo mount -t cifs //${1}/${dir_escaped} /mnt/${dir_escaped} -o credentials=/etc/auto.cifs.$1,ro \
            || sudo rmdir "/mnt/${dir_escaped}"
    done < <(smb_ls $1)
    echo "To unmount all, run \`sudo umount /mnt/*\`"
}

date_sorted_find()
{
    # Ascending, by ISO date
    local dirx=$(readlink -fn "${1:-.}"; echo x)
    local dir="${dirx%x}"
    shift
    find "$dir" "$@" -type f -printf '%TY-%Tm-%Td %TH:%TM:%TS %p\n' | sort | cut -d ' ' -f 3-
}

grouped_find()
{
    while [ -n "${1:-}" ]
    do
        target="${1%%/}/"
        if [ ! -d "$target" ]
        then
            echo "${target}: No such directory"
            return 1
        fi

        while IFS= read -rd $'\0' dir
        do
            files_found=0
            while IFS= read -rd $'\0' path
            do
                files_found=1
                ls -- "$path"
            done < <(find "$dir" -maxdepth 1 \( -type f -o -type l \) -print0 | sort -z)

            if [ $files_found -eq 1 ]
            then
                echo
            fi
        done < <(find "$target" -mindepth 1 -type d -print0 | sort -z)

        shift
    done
}

bash_timeout()
{
    local timeout=$1
    timeout=${timeout//d/*24h}
    timeout=${timeout//h/*60m}
    timeout=${timeout//m/*60}
    timeout=${timeout//s/}
    export TMOUT=$(($timeout))
}

shortest()
{
    awk '(NR == 1 || length < length(line)) { line = $0 } END { print line }'
}

longest()
{
    awk '(NR == 1 || length > length(line)) { line = $0 } END { print line }'
}
