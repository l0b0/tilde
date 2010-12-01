#!/bin/bash
#
# NAME
#        srcget - Get source packages based on directory path
#
# SYNOPSIS
#        srcget [OPTION]... URL VERSION DIRECTORY
#
# DESCRIPTION
#        URL is fetched, and all files containing VERSION will be downloaded
#        to DIRECTORY.
#
#        -A, --accept GLOB[,GLOB...]
#              Include files
#
#        -R, --reject GLOB[,GLOB...]
#              Exclude files
#
#        -h, --help
#              Print this documentation and exit.
#
#        -v, --verbose
#              Verbose output.
#
# EXAMPLES
#        srcget http://subversion.tigris.org/servlets/ProjectDocumentList?folderID=260 1.6.15 /tmp
#              Download the web page and all files linked directly from it
#              containing "1.6.15" into a hierarchy in /tmp.
#
##############################################################################

# Defaults
declare -r cmdname=$(basename "$0")
declare -r directory=$(dirname $(readlink -f "$0"))
    
. "$directory/functions.sh" || exit 1

# Process parameters
params=$(getopt -o A:R:hv \
    -l accept:,reject:,help,verbose \
    --name "$cmdname" -- "$@")
if [ $? -ne 0 ]
then
    error "$help_info" $EX_USAGE
fi
declare -r params

eval set -- "$params"

while true
do
    case $1 in
        -A|--accept)
            includes="${includes:+${includes},}${2}"
            shift 2
            ;;
        -R|--reject)
            excludes="${excludes:+${excludes},}${2}"
            shift 2
            ;;
        -h|--help)
            usage
            ;;
        -v|--verbose)
            declare -r verbose='--verbose'
            shift
            ;;
        --)
            url="${includes:+${includes},}*${2}*"
            version="$3"
            target="$(readlink -f -- "$4")"
            shift 4
            break
            ;;
        *)
            error "Unhandled option $1"
            ;;
    esac
done

if [ -z "$url" -o -z "$version" -o -z "$directory" ]
then
    error "Missing argument. $help_info" $EX_USAGE
fi

verbose_echo "Fetching version $version from $url into $target"

# 
wget --accept "$includes" --reject "$excludes" \
    --force-directories --protocol-directories --directory-prefix="$target" \
    --recursive --level=1 $verbose "$url" \
    || error "Could not get sources"

