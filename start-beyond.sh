#!/bin/bash

docker build -t beyond-docker:latest .
docker run -itd --restart always --network=host --name=beyond-docker beyond-docker  $1 $2 $3