FROM alpine
MAINTAINER comphilip@msn.com
RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
    && apk add --no-cache 3proxy@testing \
    && echo 'maxconn 102400' > /etc/3proxy/config \
    && echo 'deny * * 10.0.0.0/8,172.16.0.0/12,192.168.0.0/16' >> /etc/3proxy/config \
    && echo 'allow *' >> /etc/3proxy/config \
    && echo 'proxy' >> /etc/3proxy/config \
EXPOSE 3128
CMD 3proxy /etc/3proxy/config
