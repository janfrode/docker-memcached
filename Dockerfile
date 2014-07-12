FROM fedora:latest
MAINTAINER Jan-Frode Myklebust <janfrode@tanso.net>

RUN yum -y install memcached findutils
# Drop all setuid setgid permissions:
RUN find /usr -perm /6000 -exec chmod -s '{}' \;

# Run as user daemon
USER daemon

CMD ["/usr/bin/memcached", "-c 1024", "-m 64", "-s /tmp/memcached.sock", "-a 0700" ]

# -m $CACHESIZE -c $MAXCONN $OPTIONS
#PORT="11211"
#USER="memcached"
#MAXCONN="1024"
#CACHESIZE="64"
#OPTIONS=""
