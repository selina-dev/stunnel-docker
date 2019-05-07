#!/bin/sh

if [ ! -f "/etc/stunnel/stunnel.conf" ] ; then
	echo "ERROR: You must mount an stunnel.conf file on /etc/stunnel/stunnel.conf"
	exit 1
fi

echo "stunnel.conf:"
cat /etc/stunnel/stunnel.conf

echo ""
echo "Starting stunnel"
stunnel /etc/stunnel/stunnel.conf

echo ""
echo "Tunnels up!"
tail -f /dev/null
