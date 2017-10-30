#!/bin/bash

export MACHINE=$(hostname)

echo $MACHINE

docker rmi citybench-data-server
docker build -t citybench-data-server ./ontop/

docker rmi streamreasoning/twcitybench
docker build -t  streamreasoning/twcitybench ./triplewave/

rm -rf ./*.yml

python ./scripts/build $@
docker-compose up

cat docker-compose.yml
echo $@
	
#./scripts/create-dashboards.sh $@
