#!/bin/bash

export MACHINE=$(hostname)

echo $MACHINE

docker rmi citybench-data-server
docker build -t citybench-data-server ./ontop/

docker rmi streamreasoning/twcitybench
docker build -t  streamreasoning/twcitybench ./triplewave/

rm -rf ./*.yml

python ./scripts/build $@

cat docker-compose.yml

docker-compose up -d

echo $@
	
#./scripts/create-dashboards.sh $@
