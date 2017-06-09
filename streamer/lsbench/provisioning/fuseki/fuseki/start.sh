#!/bin/sh
echo "Starting Fuseki Server"
java -jar jena-fuseki-server-*.jar $@
sleep 15