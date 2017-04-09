#!/bin/bash

docker stop $(docker ps -a -f ancestor=rspsink --format '{{.ID}}'  | awk '{print $1}')
docker rm $(docker ps -a -f ancestor=rspsink --format '{{.ID}}'  | awk '{print $1}')
