#!/bin/bash

docker-compose down

rm -rf *.properties
rm -rf docker-compose.yml
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
