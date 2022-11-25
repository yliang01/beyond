FROM ubuntu:20.04

WORKDIR /opt/beyond

COPY entrypoint.sh .
COPY beyond .
COPY beyond-v4.0.0 .

RUN apt-get update \
&& rm -rf /var/lib/apt/lists/* \
&& chmod 777 entrypoint.sh \
&& chmod 777 beyond \
&& chmod 777 beyond-v4.0.0

ENTRYPOINT ["./entrypoint.sh"]