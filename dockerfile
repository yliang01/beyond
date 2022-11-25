FROM ubuntu:20.04

WORKDIR /opt/beyond

COPY entrypoint.sh .
COPY beyond .

RUN apt-get update \
&& rm -rf /var/lib/apt/lists/* \
&& chmod 777 entrypoint.sh \
&& chmod 777 beyond

ENTRYPOINT ["./entrypoint.sh"]