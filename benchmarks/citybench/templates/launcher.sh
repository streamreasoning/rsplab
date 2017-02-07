#! /bin/bash
# Helper script for mappingGen.py
for f in $1/*.stream;
do
	echo ${f##*/} $2 $3 
	python templates/single_mapping_gen.py ${f##*/} $2 $3
done
	
#$1 is the folder containing the stream files
#$2 is the stream mapping template
#mappings.tmp is the temporary output file name for the mapping
#$4 is the final obda file name