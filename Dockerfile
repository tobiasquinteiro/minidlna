FROM alpine:latest
MAINTAINER ull <mart.maiste@gmail.com>

# install minidlna
RUN apk --no-cache add minidlna

# Add config file
ADD minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "/usr/sbin/minidlnad", "-S" ]
