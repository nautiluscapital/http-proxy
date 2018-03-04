FROM alpine
MAINTAINER comphilip@msn.com
RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
    && apk add --no-cache 3proxy@testing \
    && echo 'proxy' > /etc/3proxy/config \
    && echo 'maxconn 102400' >> /etc/3proxy/config
EXPOSE 3128
CMD 3proxy /etc/3proxy/config
