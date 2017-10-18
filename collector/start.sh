#!/bin/bash

#Create InfluxDB Shared Volume
#echo "docker volume create -d azurefile --name $1 -o share=$1"
#docker volume create -d azurefile --name $1 -o share=$1

#Create Query Results Shared Volume
#echo "docker volume create -d azurefile --name $2 -o share=$2"
#docker volume create -d azurefile --name $2 -o share=$2

echo "./build $1 $2"
./build

docker-compose up -d
