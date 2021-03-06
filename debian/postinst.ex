#!/bin/sh

#DEBHELPER#

if [ "$1" = configure -a -x /usr/bin/fc-cache ]
	then
        echo -n "Regenerating fonts cache... "

        HOME=/root fc-cache -f -v 1>/var/log/fontconfig.log 2>&1 || \
        (echo "failed; see /var/log/fontconfig.log for more information."; \
        exit 1)

        echo "done."
fi
