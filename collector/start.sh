#!/bin/bash

docker-compose up -d

# Since we are running rsplab in local mode
# we need to make all the container communicate in the same network
# Let's add then controller and influxdb to the demo network
docker network connect demo controller
docker network connect demo influxsrv

#Create dashboard on grafana
#Notably, in a distributed settings this has to be run on 
#the machine that hosts the engine
./create-dashboards.sh
