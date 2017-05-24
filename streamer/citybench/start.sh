#!/bin/bash

export MACHINE=$(hostname)

echo $MACHINE

docker rmi streamreasoning/twcitybench
docker build -t  streamreasoning/twcitybench ./triplewave/

rm -rf ./*.yml

./scripts/build $@
docker-compose up -d

cat docker-compose.yml
echo $@
	
#./scripts/create-dashboards.sh $@
