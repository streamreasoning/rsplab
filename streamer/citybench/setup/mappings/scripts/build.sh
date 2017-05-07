# #!/bin/bash



pollution=(AarhusPollutionData201399 AarhusPollutionData184892 AarhusPollutionData182955 AarhusPollutionData158505 AarhusPollutionData206502 AarhusPollutionData179093 AarhusPollutionData195843 AarhusPollutionData206237 AarhusPollutionData195204 AarhusPollutionData204300)
parking=(AarhusParkingDataSKOLEBAKKEN  AarhusParkingDataKALKVAERKSVEJ)
traffic=(AarhusTrafficData158505 AarhusTrafficData182955 AarhusTrafficData186979 AarhusTrafficData192707)

# AarhusWeatherData0
# UserLocationService

for f in ${pollution[*]};
do
	echo $f
	python single_mapping_gen.py ${f} ../templates/pollution.tmpl ${f}.temp
	python obda_file_gen.py ../templates/obda_file.tmpl ${f}.temp  ${f}.obda false
	rm -f ${f}.temp
done

for f in ${parking[*]};
do
	echo $f
	python single_mapping_gen.py ${f} ../templates/parking.tmpl ${f}.temp
	python obda_file_gen.py ../templates/obda_file.tmpl ${f}.temp  ${f}.obda false
	rm -f ${f}.temp
done

for f in ${traffic[*]};
do
	echo $f
	python single_mapping_gen.py ${f} ../templates/traffic.tmpl ${f}.temp
	python obda_file_gen.py ../templates/obda_file.tmpl ${f}.temp  ${f}.obda false
	rm -f ${f}.temp
done


mkdir latest && mv ./*.obda latest