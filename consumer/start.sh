#!/bin/bash

export ENGINE=$(hostname)

./build

docker-compose up --force-recreate -d

./create-dashboards.sh
