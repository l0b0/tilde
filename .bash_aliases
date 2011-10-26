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

# Update everything
upgrade()
{
    sudo sh -c "apt-get update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get autoclean"
}

# Play ISO file of DVD
alias play-iso-dir='mplayer -dvd-device dvd:// -slang en' # dir

# Subversion
svndiff()
{
    svn diff ${1+"$@"} | colordiff
}

diff_ignore_moved_lines()
{
    # @param $1: Diff file from either plain `diff` or
    #            `svn diff --diff-cmd diff -x -b`
    while IFS= read -r -u 9
    do
        contents="${REPLY:2}"

        if [[ "${REPLY:0:1}" =~ [\<\>] ]]
        then
            count1="$(grep -cFxe "< $contents" "$1")"
            count2="$(grep -cFxe "> $contents" "$1")"
            if [[ "$count1" -eq "$count2" ]]
            then
                # Line has been moved; skip it.
                continue
            fi
        fi

        printf %s "$REPLY"
        printf '\n'
    done 9< "$1"
}

# Diff
wdiffc()
{
    if [ -z "${2-}" ]
    then
        return 2
    fi
    wdiff -w "$(tput bold;tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold;tput setaf 2)" -z "$(tput sgr0)" "$@"
}

# Git
gitar()
{
    # @param $1: Commit-like
    git archive --format=tar --prefix="${2}/" "$1" | gzip
}

git_send_commits()
{
    # Send all commits ahead of origin
    git format-patch -C -M origin
    git send-email --confirm=always [0-9][0-9][0-9][0-9]-*.patch
}

# Find
find_date_sorted()
{
    # Ascending, by ISO date
    while IFS= read -r -d '' -u 9
    do
        cut -d ' ' -f 3- <<< "$REPLY"
    done 9< <(find ${1+"$@"} -printf '%TY-%Tm-%Td %TH:%TM:%TS %p\0' | sort -z)
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

substring()
{
    # Extract substring with positive or negative indexes
    # @param $1: String
    # @param $2: Start (default start of string)
    # @param $3: Length (default until end of string)

    local -i strlen="${#1}"
    local -i start="${2-0}"
    local -i length="${3-${#1}}"

    if [[ "$start" -lt 0 ]]
    then
        let start+=$strlen
    fi

    if [[ "$length" -lt 0 ]]
    then
        let length+=$strlen
        let length-=$start
    fi

    if [[ "$length" -lt 0 ]]
    then
        return
    fi

    printf %s "${1:$start:$length}"
}

charray()
{
    # Split string into NUL-separated characters
    while read -N 1
    do
        printf %s "$REPLY"
        printf '\0'
    done
}

find_grouped()
{
    # Outputs files (not directories) recursively, with an empty line between
    # directories.
    while [ -n "${1-}" ]
    do
        target="${1%%/}/"
        if [ ! -d "$target" ]
        then
            echo "${target}: No such directory"
            return 1
        fi

        while IFS= read -rd '' dir
        do
            files_found=0
            while IFS= read -rd '' path
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
    if [ -z "${2-}" ]
    then
        return 2
    fi

    # Remove repeated slashes
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
    for path
    do
        if [ ! -d "$path" ]
        then
            echo "Not a directory: $path" >&2
            return 1
        fi
    done
    comm -3 \
        <(cd -- "$1" && find . -printf '%P\0' | sort -z | quote_shell) \
        <(cd -- "$2" && find . -printf '%P\0' | sort -z | quote_shell)
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

longer()
{
    # Print any lines in $2... which are more characters than $1.
    if [ $# -lt 2 ]
    then
        echo 'Synopsis: longer NUMBER FILE...' >&2
        return 2
    fi
    local -ri length="$1"
    shift

    local -i line_number
    for path
    do
        line_number=1
        while IFS= read -r -d $'\n'
        do
            if [ ${#REPLY} -gt $length ]
            then
                printf %q $path : $line_number :... ${REPLY:${length}}
                printf '\n'
            fi
            let line_number++
        done < "$path"
    done
}

exclude_cvs()
{
    grep -Fv '/CVS/'
}

exclude_svn()
{
    grep -Fv '/.svn/'
}

exclude_git()
{
    grep -Fv '/.git/'
}

exclude_vcs()
{
    exclude_cvs | exclude_svn | exclude_git
}

# GNU Make
make_targets()
{
    targets="$(make --print-data-base --question | grep '^[^.%][-A-Za-z0-9_]*:' | cut -d : -f 1 | sort -u)"
    longest_line="$(longest <<< "$targets")"
    columns=$(bc <<< "${COLUMNS-80} / (${#longest_line} + 1)")
    pr --omit-pagination --width=${COLUMNS-80} --columns=$columns <<< "$targets"
}

locale_value()
{
    # Return the highest priority language variable available
    # Based on http://mywiki.wooledge.org/BashFAQ/098
    # To print which variable was used, uncomment the `echo` line
    # $1: Optional locale category variable name (see `man locale`)

    local varname=LANG # Fallback

    if [[ "${1-}" =~ ^LC_[A-Z]+$ ]] && declare -p "${1-}" >/dev/null 2>&1
    then
        varname="$1"
    fi

    if [ -n "${LC_ALL+defined}" ]
    then
        varname=LC_ALL
    fi

    if [ -n "${LANGUAGE+defined}" -a "${LANG-}" != C ]
    then
        varname=LANGUAGE
    fi

    #echo "$varname" >&2
    printf "${!varname}"
}

schroedinger()
{
    # Succeed or fail randomly
    return $((RANDOM%2))
}

ltrim()
{
    # Left-trim $IFS from stdin as a single line
    # $1: Line separator (default NUL)
    local trimmed
    while IFS= read -r -d "${1-}" -u 9
    do
        if [ -n "${trimmed+defined}" ]
        then
            printf %s "$REPLY"
        else
            printf %s "${REPLY#"${REPLY%%[!$IFS]*}"}"
        fi
        printf "${1-\x00}"
        trimmed=true
    done 9<&0

    if [[ $REPLY ]]
    then
        # No delimiter at last line
        if [ -n "${trimmed+defined}" ]
        then
            printf %s "$REPLY"
        else
            printf %s "${REPLY#"${REPLY%%[!$IFS]*}"}"
        fi
    fi
}

rtrim()
{
    # Right-trim $IFS from stdin as a single line
    # $1: Line separator (default NUL)
    local previous last
    while IFS= read -r -d "${1-}" -u 9
    do
        if [ -n "${previous+defined}" ]
        then
            printf %s "$previous"
            printf "${1-\x00}"
        fi
        previous="$REPLY"
    done 9<&0

    if [[ $REPLY ]]
    then
        # No delimiter at last line
        last="$REPLY"
        printf %s "$previous"
        if [ -n "${previous+defined}" ]
        then
            printf "${1-\x00}"
        fi
    else
        last="$previous"
    fi

    right_whitespace="${last##*[!$IFS]}"
    printf %s "${last%$right_whitespace}"
}

trim()
{
    # Trim $IFS from individual lines
    # $1: Line separator (default NUL)
    ltrim ${1+"$@"} | rtrim ${1+"$@"}
}

trs()
{
    # Translate strings
    # $1: Original string
    # $2, $4, ...: Search strings
    # $3, $5, ...: Replacement strings

    local string=$1
    shift

    while [ $# -gt 0 ]
    do
        string="$(sed -e "s/$1/$2/g" <<< "$string")"
        shift 2
    done
    printf "$string"
}

zsed()
{
    # Replace within tarballs
    # $1: Replacement string
    # $2...: tar gzip files

    if [[ "${2+defined}" != defined ]]
    then
        return 2
    fi

    local replacement="$1"
    shift
    local -i exit_code

    for path
    do
        if [[ ! -r "${path}" ]]
        then
            exit_code=2
            continue
        fi
        full_pathx="$(readlink -fn -- "$path"; echo x)"
        full_path="${full_pathx%x}"
        tmp="$(mktemp -d)"
        cd "$tmp"
        tar -xzf "$full_path"
        while IFS= read -r -d '' -u 9
        do
            sed -i -e "$replacement" "$REPLY"
        done 9< <( find . -type f -print0 )
        tar -czf "$full_path" .
        cd - >/dev/null
    done
    return ${exit_code-0}
}

collapse()
{
    # Collapse lines based on first column
    local name old_name value
    local first=1
    while read -r name value
    do
        [ "$name" != "${old_name-}" -a "${first+defined}" != defined ] && printf "${IFS: -1}"
        [ "$name" != "${old_name-}" ] && printf %s "$name"
        [ -n "$value" ] && printf %s "${IFS:0:1}"
        printf %s "$value"
        old_name="$name"
        unset first
    done
    if [[ $name ]]
    then
        [ "$name" != "${old_name-}" -a "${first+defined}" != defined ] && printf "${IFS: -1}"
        [ "$name" != "${old_name-}" ] && printf %s "$name"
        [ -n "$value" ] && printf %s "${IFS:0:1}"
        printf %s "$value"
    else
        [ "${first+defined}" != defined ] && printf "${IFS: -1}"
    fi
}

empty_line_before_eof()
{
    # Insert a newline after the last line if it's not empty.
    # Note that this means that the empty file will *not* be changed (it
    # already ends with an empty line).
    #
    # @param $1...: Sed options and/or input files
    #
    # Example:
    # $ empty_line_before_eof -i .bak *
    #   Save backups to filename.bak, and process each file
    #
    # Command breakdown:
    # '.' denotes any character *except* newline
    # '$' denotes the end of file
    # 'a\' appends the following text (which is nothing, in this case) on a new line
    # In other words, if the last line contains a character that is not newline,
    # append a newline.

    sed -e '/.$/a\' "$@"
}

valid_ipv4()
{
    declare -i quads=0
    while IFS= read -r quad
    do
        let quads++
        while [[ $quad = 0* ]]
        do
            quad=${quad#0}
        done
        if [[ $quads -gt 4 || ! "${quad:-0}" =~ [0-9]+ || "${quad:-0}" -lt 0 || "${quad:-0}" -gt 255 ]]
        then
            return 1
        fi
    done < <(echo "$1" | tr '.' '\n')
    if [[ ! $quads -eq 4 ]]
    then
        return 1
    fi

}

if [ -r "$HOME/.bash_aliases_local" ]
then
    source "$HOME/.bash_aliases_local"
fi
true
