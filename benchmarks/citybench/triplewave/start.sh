#!/bin/bash

export MACHINE=$(hostname)

rm -rf ./*.properties 
rm -rf ./*.yml

./build $@
docker-compose up -d

cat docker-compose.yml
./create-dashboards.sh