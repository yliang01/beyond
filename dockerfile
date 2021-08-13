FROM ubuntu:20.04

WORKDIR /opt/snell

COPY entrypoint.sh .

RUN apt-get update \
&& apt-get install -y wget \
&& apt-get install -y unzip \
&& rm -rf /var/lib/apt/lists/* \
&& wget -O snell-server.zip https://github.com/surge-networks/snell/releases/download/v2.0.4/snell-server-v2.0.4-linux-amd64.zip \
&& unzip snell-server.zip \
&& chmod 777 Entrypoint.sh \
&& chmod 777 snell-server

ENTRYPOINT ["./entrypoint.sh"]