#!/bin/sh
export IPMI_PASSWD=${IPMI_PASSWD:=ADMIN}
export IPMI_USER=${IPMI_USER:=ADMIN}
cat <<EOF >/etc/freeipmi/freeipmi.conf
username $IPMI_USER
password $IPMI_PASSWD
EOF

/etc/init.d/dnsmasq start

#dnsmasq  -d -k -C  /home/dhcpd/dnsmasq.hanlon.conf

