FROM ubuntu:20.04

WORKDIR /opt/snell

COPY Entrypoint.sh .

RUN apt-get update \
&& apt-get install -y wget \
&& apt-get install -y unzip \
&& rm -rf /var/lib/apt/lists/* \
&& wget -O snell-server.zip https://github.com/surge-networks/snell/releases/download/v2.0.3/snell-server-v2.0.3-linux-amd64.zip \
&& unzip snell-server.zip \
&& chmod 777 Entrypoint.sh \
&& chmod 777 snell-server

ENTRYPOINT ["./Entrypoint.sh"]