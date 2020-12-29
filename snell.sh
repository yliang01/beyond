#!/bin/bash

docker build -t snell-docker:latest .
docker run -itd --restart always --network=host --name=snell-docker snell-docker  $1 $2