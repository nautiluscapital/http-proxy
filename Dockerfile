FROM alpine
MAINTAINER comphilip@msn.com
RUN apk add --no-cache tinyproxy
CMD tinyproxy -d

