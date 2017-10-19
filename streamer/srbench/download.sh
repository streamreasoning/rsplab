#!/bin/bash

function getssw {
	mkdir -p $2
	wget -qO- $1 | tar -xvzf -C $2
}  

export -f getssw
