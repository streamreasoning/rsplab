#!/bin/bash

#Create InfluxDB Shared Volume
docker volume create -d azurefile --name $1 -o share=$1

#Create Query Results Shared Volume
docker volume create -d azurefile --name $2 -o share=$2

./build $1 $2

docker-compose up -d