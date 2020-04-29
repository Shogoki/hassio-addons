#!/bin/bash

mkdir -p /config/homegear /share/homegear/lib /share/homegear/log
chown homegear:homegear /config/homegear /share/homegear/lib /share/homegear/log
rm -Rf /etc/homegear /var/lib/homegear /var/log/homegear
ln -nfs /config/homegear     /etc/homegear
ln -nfs /share/homegear/lib /var/lib/homegear
ln -nfs /share/homegear/log /var/log/homegear

# call original entrypoint
/bin/bash -c /start.sh