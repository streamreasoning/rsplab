#!/usr/bin/env bash

eco "Going To sleep"
sleep 5


./wait-for-it.sh postgres:5432 --timeout=30 -- echo "Postgress Ready"

sleep 5

java -jar rsplab-streamer-1.0.jar -v $1