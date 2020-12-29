FROM alpine:latest

WORKDIR /opt/snell

RUN wget -O snell-server https://github.com/surge-networks/snell/releases/download/v2.0.3/snell-server-v2.0.3-linux-amd64.zip

CMD ["ls"]