FROM alpine:edge

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade \
&& apk add php7 \
&& apk add php7-opcache \
&& ln -fs /usr/bin/php7 /usr/bin/php

#\
#&& rm -rf /var/cache/ \
#&& rm -rf /tmp/*

ADD php.ini /etc/php7/
