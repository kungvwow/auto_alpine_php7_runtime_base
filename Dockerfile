#FROM alpine:edge
FROM cmptech/auto_alpine_edge

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#COPY repositories /etc/apk/
#RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf && apk update && apk upgrade

RUN apk update && apk upgrade 

#basic tools
#RUN apk add wget curl vim bash

#some libs (may add/change future...)
RUN apk add \
libjpeg \
libaio 

RUN apk add php7
RUN apk add php7-opcache

RUN ln -s /usr/bin/php7 /usr/bin/php \

ADD php.ini /etc/php7/
