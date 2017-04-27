#!/bin/bash

if [ "$1" = "--remote" ] && [[ "$2" = *".ini" ]]; then
	rm -f params.ini
	wget -c $2 -O params.ini
	cat params.ini
fi

mkdir tmp; true

./sibgenerator 1 ./tmp/ ./ -v -stream

mv tmp/*.ttl output/ ; true
