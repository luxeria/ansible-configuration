#!/usr/bin/env bash
# Author: gandro
# Reviewed: mindfuckup
set -eu

dpkg-query --showformat='${Conffiles}\n' --show 'nginx*' \
    | grep '^ /etc/nginx' | while read file md5sum
do
    if echo "$md5sum" "$file" | md5sum --check --status 2>/dev/null ; then
        echo "Removing ${file}"
        rm -f "$file"
    fi
done
