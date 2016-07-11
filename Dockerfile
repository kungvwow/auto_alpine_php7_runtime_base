FROM alpine:edge

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories
RUN echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories

RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade

RUN apk add php7
RUN apk add php7-opcache

RUN ln -fs /usr/bin/php7 /usr/bin/php

ADD php.ini /etc/php7/
