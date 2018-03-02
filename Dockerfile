FROM alpine
MAINTAINER comphilip@msn.com
RUN apk add --no-cache squid
ADD ./squid.conf /etc/squid/squid.conf
EXPOSE 3128
CMD squid
