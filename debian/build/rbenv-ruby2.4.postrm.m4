#!/bin/bash

set -e

case "$1" in

    remove)
        rm -rf -- /usr/lib/rbenv/versions/MAJOR_VERSION
        rbenv rehash
        ;;

    purge|upgrade|failed-upgrade|abort-install|abort-upgrade|disappear)
        ;;

    *)
        echo "postrm called with unknown argument \`${1}'." >&2
        exit -- 1
        ;;
esac

#DEBHELPER#

exit -- 0
