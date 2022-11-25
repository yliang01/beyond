#!/bin/bash
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ]; 
then
    cd /opt/beyond/
    echo "[snell-server]" >> beyond.conf
    echo "listen = 0.0.0.0:$1" >> beyond.conf
    echo "psk = $2" >> beyond.conf
    echo "obfs = $3" >> beyond.conf
    ./beyond -c beyond.conf
else
    exec "$@"
fi