#!/bin/bash

docker container rm -f beyond-docker
docker build -t beyond-docker:latest ./docker
docker run -itd --restart always --network=host --name=beyond-docker beyond-docker $1