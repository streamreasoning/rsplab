#!/bin/bash

rm -rf ./*.yml

python ./scripts/build $@

cat docker-compose.yml

docker-compose up -d
	
#./scripts/create-dashboards.sh $@
