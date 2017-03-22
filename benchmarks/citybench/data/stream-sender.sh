#! /bin/bash

for f in $1/*.stream;
do
	echo ${f##*/} $2 $3 
	csvsql --db $2 --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference $f
done

#e.g. csvsql --db postgresql://root:root@postgres:5432/initdb --insert --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference  short/AarhusPollutionData158324.stream