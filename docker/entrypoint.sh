#!/bin/bash
if [ -n "$1" ]; 
then
    echo "[snell-server]" >> beyond.conf
    echo "listen = 0.0.0.0:54322" >> beyond.conf
    echo "psk = $1" >> beyond.conf
    echo "obfs = http" >> beyond.conf
    ./beyond -c beyond.conf &

    echo "[snell-server]" >> beyond4.conf
    echo "listen = 0.0.0.0:54324" >> beyond4.conf
    echo "psk = $1" >> beyond4.conf
    echo "ipv6 = false" >> beyond4.conf
    ./beyond4 -c beyond4.conf
else
    echo "bad parameter"
fi