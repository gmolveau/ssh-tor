#!/bin/sh

set -e

touch /tmp/tor.launching

echo "launching TOR ..."
/usr/bin/tor > /tmp/tor.launching 2>&1 &

exec 6>&-

while ! grep "Bootstrapped 100%: Done" /tmp/tor.launching
do sleep 1; done

rm /tmp/tor.launching

exec 6>&-

exec "$@"