#!/bin/bash


for idx in $(seq 0 $((${#lines_ary[@]} - 1))); do
	line="${lines_ary[$idx]}"
	printf "${line}\n"
done