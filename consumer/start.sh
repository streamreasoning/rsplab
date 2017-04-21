#!/bin/bash

export ENGINE=$(hostname)

docker pull streamreasoning/$ENGINE

./build

docker-compose up --force-recreate -d

./create-dashboards.sh
