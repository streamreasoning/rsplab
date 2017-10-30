#!/bin/bash

docker-compose up -d
docker network connect demo controller
docker network connect demo influxsrv

#Create dashboard on grafana
#Notably, in a distributed settings this has to be run on 
#the machine that hosts the engine
./create-dashboards.sh
