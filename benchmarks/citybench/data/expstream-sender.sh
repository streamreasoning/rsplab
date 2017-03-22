#! /bin/bash

# for f in $1/*.stream;
# do
# 	echo ${f##*/} $2 $3 
# 	csvsql --db $2 --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference $f
# done

# #e.g. csvsql --db postgresql://root:root@postgres:5432/initdb --insert --encoding ASCII --delimiter , \
# ## --quotechar \' --blanks --no-constraints --no-inference  short/AarhusPollutionData158324.stream

pollution=(AarhusPollutionData201399 AarhusPollutionData184892 AarhusPollutionData182955 
	AarhusPollutionData158505 AarhusPollutionData206502 AarhusPollutionData179093 AarhusPollutionData195843 
	AarhusPollutionData206237 AarhusPollutionData195204 AarhusPollutionData204300)
parking=(AarhusParkingDataSKOLEBAKKEN  AarhusParkingDataKALKVAERKSVEJ)
traffic=(AarhusTrafficData158505 AarhusTrafficData182955 AarhusTrafficData186979 AarhusTrafficData192707)

 AarhusPollutionData158324      | table | root
 public | AarhusPollutionData158505      | table | root
 public | AarhusPollutionData179093      | table | root
 public | AarhusPollutionData182955      | table | root
 public | AarhusPollutionData184892      | table | root
 public | AarhusPollutionData195204      | table | root
 public | AarhusPollutionData195843      | table | root
 public | AarhusPollutionData201399      | table | root
 public | AarhusPollutionData204300      | table | root
 public | AarhusPollutionData206237      | table | root
 public | AarhusPollutionData206502
# AarhusWeatherData0
# UserLocationService

# for f in ${pollution[*]};
# do
# 	echo $f
# 	csvsql --db postgresql://root:root@postgres:5432/initdb  --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference streams/pollution/${f}.stream
# 	cp streams/pollution/${f}.stream experiment-streams/
# done

for f in ${parking[*]};
do
	echo $f
	csvsql --db postgresql://root:root@postgres:5432/initdb  --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference streams/parking/${f}.stream
	cp streams/parking/${f}.stream experiment-streams/
done

for f in ${traffic[*]};
do
	echo $f
	csvsql --db postgresql://root:root@postgres:5432/initdb  --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference streams/traffic/${f}.stream
	cp streams/traffic/${f}.stream experiment-streams/
done

# csvsql --db postgresql://root:root@postgres:5432/initdb  --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference streams/AarhusWeatherData0.stream
# cp streams/AarhusWeatherData0.stream experiment-streams/

csvsql --db postgresql://root:root@postgres:5432/initdb  --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference streams/UserLocationService.stream
#cp streams/UserLocationService.stream experiment-streams/