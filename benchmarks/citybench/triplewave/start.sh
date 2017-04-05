#!/bin/bash

export MACHINE=$(hostname)

echo $MACHINE

rm -rf ./*.properties 
rm -rf ./*.yml

./build $@
docker-compose up -d

cat docker-compose.yml
echo $@

./create-dashboards.sh $@
