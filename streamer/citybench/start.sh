#!/bin/bash

## Build the image for the ontop SPARQL server 
docker rmi citybench-data-server
docker rmi streamreasoning/twcitybench

rm -rf ./*.yml

python ./scripts/build $@

cat docker-compose.yml

docker-compose up -d
	
#./scripts/create-dashboards.sh $@
