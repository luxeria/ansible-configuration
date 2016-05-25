#!/usr/bin/env bash
# Author: gandro
# Reviewed: mindfuckup
set -eu

# Removes all unmodified config files in /etc/nginx
dpkg-query --showformat='${Conffiles}\n' --show 'nginx*' \
    | grep '^ /etc/nginx' | while read file md5sum
do
    if echo "$md5sum" "$file" | md5sum --check --status 2>/dev/null ; then
        echo "Removing ${file}"
        rm -f "$file"
    fi
done

# Remove broken symlinks
find /etc/nginx -type l -exec test ! -e {} \; -delete -printf "Removing %p\n"


# Remove all empty directories
find /etc/nginx -type d -empty -delete -printf "Removing %p\n"
