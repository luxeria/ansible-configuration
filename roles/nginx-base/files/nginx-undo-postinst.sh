#!/usr/bin/env bash
# This script 'deconfigures' the Debian package, i.e. removes all the Debian
# default configuration and `postinst` files.

set -eu

indexfile='/var/www/html/index.nginx-debian.html'
configdir='/etc/nginx'

# Removes all unmodified config files in /etc/nginx
dpkg-query --showformat='${Conffiles}\n' --show 'nginx*' \
    | grep "^ ${configdir}" | while read file md5sum
do
    if echo "$md5sum" "$file" | md5sum --check --status 2>/dev/null ; then
        echo "Removing ${file}"
        rm -f "$file"
    fi
done

# Remove unused HTML file
if [[ -e "$indexfile" ]] ; then
    rm -f "$indexfile"
    echo "Removing ${indexfile}"
    find $(dirname "$indexfile") -type d -empty -delete -printf "Removing %p\n"
fi

if [[ -d "${configdir}" ]] ; then
    # Remove broken symlinks
    find /etc/nginx -type l -exec test ! -e {} \; -delete -printf "Removing %p\n"

    # Remove all empty directories
    find /etc/nginx -type d -empty -delete -printf "Removing %p\n"
fi

# Recreate configuration directory
mkdir -p "${configdir}/conf.d"
