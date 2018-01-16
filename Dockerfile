FROM debian
MAINTAINER comphilip@msn.com
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /proxy && \
    cd /proxy && \
    curl -o proxy.tar.gz -L 'https://github.com/snail007/goproxy/releases/download/v4.0/proxy-linux-amd64.tar.gz' && \
    tar -xvf proxy.tar.gz && \
    rm proxy.tar.gz blocked direct
EXPOSE 8080
WORKDIR /proxy
CMD ./proxy http -t tcp -p "0.0.0.0:8080"

