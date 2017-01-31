#!/bin/bash

for f in ./*.tmp;
	do
		python templates/obda_file_gen.py  templates/obda_file.tmpl $f $1 $2
done