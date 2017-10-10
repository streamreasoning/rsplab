#!/usr/bin/env bash

sh wait-for-it.sh ping postgres

java -jar rsplab-streamer-1.0.jar -v $1