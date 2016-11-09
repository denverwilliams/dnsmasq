FROM armhfbuild/debian

COPY . /home/dhcpd

RUN chmod +x /home/dhcpd/entrypoint.sh

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install dnsmasq 

WORKDIR /home/dhcpd

# Expose DHCP
EXPOSE 67/udp
EXPOSE 68/udp

# default command
ENTRYPOINT ["/home/dhcpd/entrypoint.sh"]