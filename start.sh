#!/bin/bash
chmod 755 -R /etc/bind/

chmod g+s -R /etc/bind/


/usr/sbin/named -c /etc/bind/named.conf
tail -f  /var/cache/bind/query.log
