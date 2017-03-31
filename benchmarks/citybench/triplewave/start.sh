#!/bin/bash

export MACHINE=$(hostname)

rm -rf ./*.properties 
rm -rf ./*.yml

./build $@
docker-compose up -d
