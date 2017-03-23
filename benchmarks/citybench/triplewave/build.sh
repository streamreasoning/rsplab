#!/bin/bash

python triplewave/tw_stream_gen.py localhost 4000 4040 http://cbquest.westeurope.cloudapp.azure.com:8080/openrdf-sesame/repositories/ triplewave/properties.tmpl

mkdir triplewave/experiments
mv ./*.properties ./triplewave/experiments/