#!/bin/bash
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ]; 
then
    cd /opt/beyond/
    echo "[snell-server]" >> beyond.conf
    echo "listen = 0.0.0.0:$1" >> beyond.conf
    echo "psk = $2" >> beyond.conf
    echo "obfs = $3" >> beyond.conf
    ./beyond -c beyond.conf

    echo "[snell-server]" >> beyond-v4.0.0.conf
    echo "listen = 0.0.0.0:$(($1+1))" >> beyond-v4.0.0.conf
    echo "psk = $2" >> beyond-v4.0.0.conf
    echo "ipv6 = false" >> beyond-v4.0.0.conf
    ./beyond-v4.0.0 -c beyond-v4.0.0.conf
else
    exec "$@"
fi