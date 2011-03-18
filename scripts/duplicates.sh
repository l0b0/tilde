#!/bin/bash
[ -n "$1" ] || exit 1
exec 9< <( find "$1" -type f -print0 )
while IFS= read -r -d '' -u 9
do
    file_path="$(readlink -fn -- "$REPLY"; echo x)"
    file_path="${file_path%x}"
    exec 8< <( find "$1" -type f -not -path "$file_path" -print0 )
    while IFS= read -r -d '' -u 8 OTHER
    do
        cmp --quiet -- "$REPLY" "$OTHER"
        case $? in
            0)
                echo -n "cmp -- "
                printf %q "${REPLY}"
                echo -n ' '
                printf %q "${OTHER}"
                echo ""
                break
                ;;
            2)
                echo "\`cmp\` failed!"
                exit 2
                ;;
            *)
                :
                ;;
        esac
    done
done
