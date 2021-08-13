#!/bin/bash
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ]; 
then
    cd /opt/snell/
    echo "[snell-server]" >> snell-server.conf
    echo "listen = 0.0.0.0:$1" >> snell-server.conf
    echo "psk = $2" >> snell-server.conf
    echo "obfs = $3" >> snell-server.conf
    ./snell-server -c snell-server.conf
else
    exec "$@"
fi