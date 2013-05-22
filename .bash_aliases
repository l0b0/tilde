# enable color support
if [ -x /usr/bin/dircolors ]
then
    if [ -r "$HOME/.dircolors" ]
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

# some more ls aliases
alias l='ls' # Default
alias la='ls -hlA' # Full info
alias lsd='ls -hlt' # List sorted by modification time

sum() {
    echo $(cat "${@--}") | tr -s ' ' '+' | bc
}

# Find
find_date_sorted() {
    # Sorted by ISO date, ascending
    # Separated by NUL to be able to reuse in other loops
    while IFS= read -r -d '' -u 9
    do
        printf '%s\0' "${REPLY#* }"
    done 9< <(find ${1+"$@"} -printf '%TY-%Tm-%TdT%TH:%TM:%TS %p\0' | sort -z)
}

substring() {
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

path_common() {
    if [ $# -ne 2 ]
    then
        return 2
    fi

    # Remove repeated slashes
    for param
    do
        param="$(printf %s. "$1" | tr -s "/")"
        set -- "$@" "${param%.}"
        shift
    done

    common_path="$1"
    shift

    for param
    do
        while case "${param%/}/" in "${common_path%/}/"*) false;; esac; do
            new_common_path="${common_path%/*}"
            if [ "$new_common_path" = "$common_path" ]
            then
                return 1 # Dead end
            fi
            common_path="$new_common_path"
        done
    done
    printf %s "$common_path"
}

# Bash
bash_timeout() {
    # Set the idle timeout before the shell will be closed automatically
    # @param $1: Timeout in <N>d<N>h<N>m<N>[s] format
    local timeout="$1"
    timeout="${timeout//d/*24h}"
    timeout="${timeout//h/*60m}"
    timeout="${timeout//m/*60}"
    timeout="${timeout//s/}"
    export TMOUT="$(($timeout))"
}

# Perl
perl_module_version() {
    local version
    for module
    do
        version="$(perl -M${module} -e "print \$${module}::VERSION")"
        if [ -n "$version" ]
        then
            echo "$module $version"
        else
            echo "Unknown module $module" >&2
            return 1
        fi
    done
}

perl_module_files() {
    perl -MFile::Find=find -MFile::Spec::Functions -Tlwe 'find { wanted => sub { print canonpath $_ if /\.pm\z/ }, no_chdir => 1 }, @INC'
}

perl_modules() {
    perl -MExtUtils::Installed -e'my $inst = ExtUtils::Installed->new();print $_, $/ for $inst->modules'
}

perl_modules_test() {
    local -i exit_code=0
    while IFS= read -r -u 9
    do
        perl_module_version "$REPLY" 2>&1 >/dev/null || let exit_code=1
    done 9< <( perl_modules )
    return $exit_code
}

# String handling
shortest() {
    # Print only the shortest line
    # If multiple lines match, only the first one will be printed
    awk '(NR == 1 || length < length(line)) { line = $0 } END { print line }'
}

longest() {
    # Print only the longest line
    # If multiple lines match, only the first one will be printed
    awk '(NR == 1 || length > length(line)) { line = $0 } END { print line }'
}

longer() {
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
        while IFS= read -r -d $'\n' || [ -n "$REPLY" ]
        do
            if [ ${#REPLY} -gt $length ]
            then
                printf %q "$path" : $line_number :... "${REPLY:${length}}"
                printf '\n'
            fi
            let line_number++
        done < "$path"
    done
}

exclude_cvs() {
    grep "$@" -Fve '/CVS/'
}

exclude_svn() {
    grep "$@" -Fve '/.svn/'
}

exclude_git() {
    grep "$@" -Fve '/.git/'
}

exclude_vcs() {
    exclude_cvs "$@" | exclude_svn "$@" | exclude_git "$@"
}

# GNU Make
make_targets() {
    targets="$(make --print-data-base --question | grep '^[^.%][-A-Za-z0-9_]*:' | cut -d : -f 1 | sort -u)"
    longest_line="$(longest <<< "$targets")"
    columns=$(bc <<< "${COLUMNS-80} / (${#longest_line} + 1)")
    pr --omit-pagination --width=${COLUMNS-80} --columns=$columns <<< "$targets"
}

locale_value() {
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
    echo "${!varname}"
}

schroedinger() {
    # Succeed or fail randomly
    return $((RANDOM%2))
}

trs() {
    # Translate strings
    # $1: Original string
    # $2, $4, ...: Search strings
    # $3, $5, ...: Replacement strings

    local string="$1"
    shift

    while [ $# -gt 0 ]
    do
        string="$(sed -e "s/$1/$2/g" <<< "$string")"
        shift 2
    done
    printf "$string"
}

zsed() {
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
        done 9< <( find . -type f -exec printf '%s\0' {} \; )
        tar -czf "$full_path" .
        cd - >/dev/null
    done
    return ${exit_code-0}
}

collapse() {
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
    if [[ "$name" ]]
    then
        [ "$name" != "${old_name-}" -a "${first+defined}" != defined ] && printf "${IFS: -1}"
        [ "$name" != "${old_name-}" ] && printf %s "$name"
        [ -n "$value" ] && printf %s "${IFS:0:1}"
        printf %s "$value"
    else
        [ "${first+defined}" != defined ] && printf "${IFS: -1}"
    fi
}

empty_line_before_eof() {
    # Insert a newline after the last line if it's not empty.
    # Note that this means that the empty file will *not* be changed (it
    # already ends with an empty line).
    #
    # @param $1...: Sed options and/or input files
    #
    # Example:
    # $ empty_line_before_eof -i .bak ./*
    #   Save backups to filename.bak, and process each file
    #
    # Command breakdown:
    # '$' denotes the end of file
    # 'a\' appends the following text (which is nothing, in this case) on a new line
    # In other words, if the last line contains a character that is not newline,
    # append a newline.

    sed -e '$a\' "$@"
}

markdown_page() {
    # Add stuff to markdown output to make it valid XHTML 1.0 Strict with
    # unambiguous encoding.
    # @param $1...: markdown input files

    cat <<EOF
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Markdown</title>
</head>
<body>
EOF
    for path
    do
        markdown "$path"
    done
    cat <<EOF
</body>
</html>
EOF
}

valid_ipv4() {
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

completions() {
    # Print autocompletions
    # Examples:
    #
    #   List all user-related Git configuration settings:
    #     completions git config '' | grep user
    #
    #   List all available commands:
    #     completions
    if [ $# -eq 0 ]
    then
        set -- ''
    fi
    local COMP_LINE="$*"
    local COMP_WORDS=("$@")
    local COMP_CWORD=${#COMP_WORDS[@]}
    ((COMP_CWORD--))
    local COMP_POINT=${#COMP_LINE}
    local COMP_TYPE=9
    local COMP_KEY=9
    local COMP_WORDBREAKS='"'"'><=;|&(:"
    local COMPREPLY
    _command_offset 0
    for result in "${COMPREPLY[@]}"
    do
        echo "$result"
    done
}

dpkg-quilt() {
    quilt --quiltrc="${HOME}/.quiltrc-dpkg" ${@+"$@"}
}

fullname() {
    # The fifth field contains the name
    # The first subfield contains the full name
    getent passwd -- "${@-$USER}" | cut -d ':' -f 5 | cut -d ',' -f 1
}

watch_url() {
    # Watch a URL for changes, and open it in a web browser when a change is
    # detected.
    # @param $1: URL
    # @param $2: Optional replacements in sed style, e.g.
    #            /foo/d;s/123/456/g;...
    # @param $3: Interval between checks; by default 1 hour
    if [ $# -eq 0 -o $# -gt 3 ]
    then
        echo 'Synopsis: watch_url URL [REPLACEMENTS] [INTERVAL]' >&2
        return 2
    fi

    local -r url="$1"
    local -r dir="$(mktemp --directory)"
    local -r file="${dir}/index.html"

    # Get the current document
    wget --quiet --output-document "$file" "$url"

    # Replace in the current document
    sed -i -e "${2-}" "${file}"

    # Check for differences at intervals
    # Add `--quiet` to the `diff` command if you don't want to see the
    # difference.
    while diff "$file" <(wget --quiet --output-document - "$url" | sed -e "${2-}")
    do
        sleep "${3-1h}"
    done

    # Cleanup
    rm -- "$file"
    rmdir -- "$dir"

    # Start browser
    x-www-browser "$url"
}

coalesce() {
    # Print the first non-empty line
    # Returns success if a non-empty line is found.
    #
    # Examples:
    #
    # $ coalesce < test.sh
    # #!/usr/bin/env bash
    #
    # $ var=('' 'foo' 'bar')
    # $ printf '%s\n' "${var[@]}" | coalesce
    # foo
    while IFS= read -r || [[ -n "$REPLY" ]]
    do
        if [[ -n "$REPLY" ]]
        then
            printf '%s\n' "$REPLY"
            return
        fi
    done
    return 1
}

head_tail() {
    # Both head and tail of a file
    # @param $1...$#-1: head *and* tail options, such as "-n 5"
    # @param $#: File name

    # Remove last parameter
    local index=$#
    for param
    do
        shift
        if [ $index -ne 1 ]
        then
            set -- "$@" "$param"
        fi
        index=$((index - 1))
    done

    {
        head "$@";
        tail "$@";
    } < "$last"
}

log_time_diff() {
    # Prepends syslog log lines with the difference between the current line
    # and the previous one in seconds
    #
    # Example:
    #
    # $ log_time_diff < /var/log/syslog
    # $ log_time_diff < /var/log/syslog | sort --numeric --key=1
    local prev line month day time rest
    while read -r line
    do
        read -r month day time rest <<< "$line"
        ts="$(date --date="$month $day $time" +%s)"
        if [ "${prev:+set}" = 'set' ]
        then
            diff="$((ts - prev))"
        else
            diff=0
        fi
        printf "%d %s\n" "$diff" "$line"
        prev="$ts"
    done
}

escaped_declare() {
    (
        eval '
            declare() {
                printf declare;
                printf " %q" "$@";
                printf "\\n";
            }'"
            $(declare -p)"
    )
}

date_range() {
    # Print dates from $1 through $2, inclusive
    #
    # Examples:
    #
    # $ date_range today Friday
    # $ date_range 2000-01-01 2000-12-31
    start="$(date --rfc-3339=date --date="$1")"
    end="$(date --rfc-3339=date --date="$2")"
    printf '%s\n' "$start"
    until [ "$start" = "$end" ]
    do
        start="$(date --date="$start + 1 day" +%Y-%m-%d)"
        printf '%s\n' "$start"
    done
}

if [ -r "$HOME/.bash_aliases_local" ]
then
    source "$HOME/.bash_aliases_local"
fi
true
