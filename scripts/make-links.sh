#!/usr/bin/env bash
#
# NAME
#        make-links.sh - Create symbolic links
#
# SYNOPSIS
#        make-links.sh [OPTION]... TARGETS DIRECTORY
#
# DESCRIPTION
#        Creates one symlink for each of the TARGETS in DIRECTORY. If the
#        link already exists, it is replaced. If it is a proper file or
#        directory, the user is given options to continue.
#
#        -d, --diff
#               Command to use instead of diff to compare existing files to
#               targets.
#
#        -e, --exclude
#               Exclude regular expressions; see default_excludes variable.
#
#        -f, --force
#               Create symlinks without asking for confirmation, overwriting any
#               existing files.
#
#        -s, --skip-existing
#               Skip existing files without asking for confirmation. If this and
#               --force have been specified, the last occurrence takes
#               precedence.
#
#        -h, --help
#               Display this information and quit.
#
#        -v, --verbose
#               Verbose output.
#
# EXAMPLES
#        make-links.sh ~/settings/* ~
#               Create links in the home directory to the regular files in
#               ~/settings.
#
#        make-links.sh -v -d meld ~/dev/tilde/.* ~/settings/.* ~
#               Create links in the home directory to all dot-files in
#               ~/dev/tilde and ~/settings. If any of the files already exist,
#               the diffs can be reviewed in meld.
#
# BUGS
#        https://github.com/l0b0/tilde/issues
#
# COPYRIGHT
#        Copyright © 2008-2014 Victor Engmark. License GPLv3+: GNU GPL
#        version 3 or later <http://gnu.org/licenses/gpl.html>.
#        This is free software: you are free to change and redistribute it.
#        There is NO WARRANTY, to the extent permitted by law.
#
################################################################################

set -o errexit -o noclobber -o nounset -o pipefail

# Defaults
default_diff=(diff -s)
default_excludes=('\.' '\.\.' '\.git')

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$directory/../shell-includes/error.sh"
. "$directory/../shell-includes/usage.sh"
. "$directory/../shell-includes/variables.sh"

# Process parameters
params="$(getopt -o d:e:fshv \
    -l diff:,exclude:,force,skip-existing,help,verbose \
    --name "$script" -- "$@")"

if [ $? -ne 0 ]
then
    usage
fi

eval set -- "$params"
unset params

while true
do
    case $1 in
        -d|--diff)
            diff_exec=(${2-})
            shift 2
            ;;
        -e|--exclude)
            # Will override $default_excludes
            excludes+=("${2-}")
            shift 2
            ;;
        -f|--force)
            action='R'
            shift
            ;;
        -s|--skip-existing)
            action='S'
            shift
            ;;
        -h|--help)
            usage
            exit
            ;;
        -v|--verbose)
            verbose='--verbose'
            shift
            ;;
        --)
            shift
            if [ -z "${1:-}" ]
            then
                error "$(printf %q "${script}"): Missing targets." $ex_usage
            fi
            if [ -z "${2:-}" ]
            then
                error "$(printf %q "${script}"): Missing directory." $ex_usage
            fi
            targets=(${@:1:$(($#-1))})
            source_dir="${@:$#}"
            break
            ;;
        *)
            usage
            ;;
    esac
done

if [ ! -d "$source_dir" ]
then
    error "$(printf %q "${script}"): Not a directory: $(printf %q "$source_dir")" $ex_usage
fi

# Set defaults
diff_exec=(${diff_exec:-$default_diff})
if [ -z "${excludes-}" ]
then
    excludes=( "${default_excludes[@]}" )
fi

for target_path in "${targets[@]}"
do
    if [ ! -e "$target_path" ]
    then
        error "$(printf %q "${script}"): Target does not exist: $(printf %q "$target_path")" $ex_usage
    fi

    target_file="$(basename -- "$target_path")"

    # Check excludes on file name and path
    for exclude in "${excludes[@]}"
    do
        if [[ "$target_file" =~ ^${exclude}$ || "$target_path" =~ ^${exclude}$ ]]
        then
            continue 2 # Next target path
        fi
    done

    # Ask again if it has not been forced
    if [[ ! "${action-}" =~ ^[SR]$ ]]
    then
        unset action
    fi

    source_path="${source_dir}/${target_file}"

    if [[ ! -e "$source_path" || ( -L "$source_path" && ! "${action-}" =~ ^[Ss]$ ) ]]
    then
        ln ${verbose-} --force --symbolic "$target_path" "$source_dir"
        continue
    fi

    # Have to either skip or replace
    while [[ ! "${action-}" =~ ^[SsRr]$ ]]
    do
        echo "${source_path} exists and is a $(stat -c %F -- "${source_path}"). What do you want to do?"
        read -n 1 -p $'[d]iff, [s]kip, [S]kip all, [r]eplace, [R]eplace all: \n' action

        if [[ "${action-}" =~ ^[Dd]$ ]]
        then
            "${diff_exec[@]}" -- "$target_path" "$source_path" || true
        fi
    done

    if [[ "${action-}" =~ ^[Ss]$ ]]
    then
        verbose_print_line "Skipping $source_path"
        continue
    fi

    if [[ "${action-}" =~ ^[Rr]$ ]]
    then
        rm ${verbose-} --recursive -- "$source_path"
    fi

    ln ${verbose-} --symbolic "$target_path" "$source_dir"
done
