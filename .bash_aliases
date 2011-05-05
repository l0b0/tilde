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

cvsignore2svn()
{
    # $@: Directories to search through recursively
    local dir_path
    while IFS= read -r -d '' -u 9
    do
        dir_path="$(dirname -- "$REPLY")x"
        dir_path="${dir_path%x}"
        svn propset svn:ignore -F "$REPLY" -- "$dir_path"
        svn remove "$REPLY"
    done 9< <( find "$@" -name .cvsignore -print0 )
}

# Diff
wdiffc()
{
    wdiff -w "$(tput bold;tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold;tput setaf 2)" -z "$(tput sgr0)" "$@"
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

gitar()
{
    # @param $1: Commit-like
    # @param $2: Name of output file (without extension)
    git archive --format=tar --prefix="${2}/" "$1" | gzip > "${2}.tar.gz"
}

git_send_commits()
{
    # Send all commits ahead of origin
    git format-patch -C -M origin
    git send-email [0-9][0-9][0-9][0-9]-*.patch
}

# Find
find_date_sorted()
{
    # Ascending, by ISO date
    local dirx=$(readlink -fn "${1:-.}"; echo x)
    local dir="${dirx%x}"
    shift
    find "$dir" "$@" -type f -printf '%TY-%Tm-%Td %TH:%TM:%TS %p\n' | sort | cut -d ' ' -f 3-
}

quote_shell()
{
    # Ensure that the output is escaped so that each line corresponds to a NUL-
    # separated entry
    while IFS= read -r -d ''
    do
        printf %q "$REPLY"
        printf '\n'
    done
}

find_grouped()
{
    # Outputs files (not directories) recursively, with an empty line between
    # directories.
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

path_common()
{
    # Rotate parameters and clean up
    for param
    do
        param=$(printf %s. "$1" | tr -s "/")
        set -- "$@" "${param%.}"
        shift
    done

    common_path=$1
    shift

    for param
    do
        while case ${param%/}/ in "${common_path%/}/"*) false;; esac; do
            new_common_path=${common_path%/*}
            if [ "$new_common_path" = "$common_path" ]
            then
                return 1 # Dead end
            fi
            common_path=$new_common_path
        done
    done
    printf %s "$common_path"
}

compare_dirs()
{
    # Shows which files and directories exist in one directory but not both
    if [ $# -ne 2 ]
    then
        echo "Usage: compare_dirs dir1 dir2" >&2
        return 2
    fi
    for path in "$@"
    do
        if [ ! -d "$path" ]
        then
            echo "Not a directory: $path" >&2
            return 1
        fi
    done
    comm -3 \
        <(cd -- "$1"; find . -print0 | sort -z | quote_shell | cut -c 3-) \
        <(cd -- "$2"; find . -print0 | sort -z | quote_shell | cut -c 3-)
}

count_files()
{
    local -i file_count=0
    while IFS= read -r -d '' -u 9
    do
        let file_count=$file_count+1
    done 9< <( find "$@" -type f -print0 )
    printf %d $file_count
}

# Bash
bash_timeout()
{
    # Set the idle timeout before the shell will be closed automatically
    local timeout=$1
    timeout=${timeout//d/*24h}
    timeout=${timeout//h/*60m}
    timeout=${timeout//m/*60}
    timeout=${timeout//s/}
    export TMOUT=$(($timeout))
}

# Perl
perl_module_version()
{
    local version
    for module
    do
        version=$(perl -M${module} -e "print \$${module}::VERSION")
        if [ -n "$version" ]
        then
            echo "$module $version"
        else
            echo "Unknown module $module" >&2
            return 1
        fi
    done
}

perl_module_files()
{
    perl -MFile::Find=find -MFile::Spec::Functions -Tlwe 'find { wanted => sub { print canonpath $_ if /\.pm\z/ }, no_chdir => 1 }, @INC'
}

perl_modules()
{
    perl -MExtUtils::Installed -e'my $inst = ExtUtils::Installed->new();print $_, $/ for $inst->modules'
}

perl_modules_test()
{
    local -i error=0
    while IFS= read -r -u 9
    do
        perl_module_version "$REPLY" 2>&1 >/dev/null || let error=1
    done 9< <( perl_modules )
    return $error
}

# String handling
shortest()
{
    # Print only the (first) shortest line
    awk '(NR == 1 || length < length(line)) { line = $0 } END { print line }'
}

longest()
{
    # Print only the (first) longest line
    awk '(NR == 1 || length > length(line)) { line = $0 } END { print line }'
}

# GNU Make
make_targets()
{
    targets="$(make --print-data-base --question | grep '^[^.%][-A-Za-z0-9_]*:' | cut -d : -f 1 | sort -u)"
    longest_line="$(longest <<< "$targets")"
    columns=$(bc <<< "${COLUMNS:-80} / (${#longest_line} + 1)")
    pr --omit-pagination --width=${COLUMNS:-80} --columns=$columns <<< "$targets"
}

locale_value()
{
    # Return the highest priority language variable available
    # Based on http://mywiki.wooledge.org/BashFAQ/098
    # To print which variable was used, uncomment the `echo` line
    # $1: Optional locale category variable name (see `man locale`)

    local varname=LANG # Fallback

    if [[ "${1:-}" =~ ^LC_[A-Z]+$ ]] && declare -p "${1:-}" >/dev/null 2>&1
    then
        varname="$1"
    fi

    if [ -n "${LC_ALL+defined}" ]
    then
        varname=LC_ALL
    fi

    if [ -n "${LANGUAGE+defined}" -a "${LANG:-}" != C ]
    then
        varname=LANGUAGE
    fi

    #echo "$varname" >&2
    printf "${!varname}"
}

if [ -r "$HOME/.bash_aliases_local" ]
then
    source "$HOME/.bash_aliases_local"
fi
true
