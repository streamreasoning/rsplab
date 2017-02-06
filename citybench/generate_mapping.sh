#! /bin/bash
# calls mapping generator w.r.t some given configurations

while [[ "$#" > 0 ]]; do case $1 in
    --parking) sh ./templates/launcher.sh data/streams/parking/ templates/parking.tmpl parking.obda ;;
	--pollution) sh ./templates/launcher.sh data/streams/pollution/ templates/pollution.tmpl pollution.obda ;;
	--traffic)  sh ./templates/launcher.sh data/streams/traffic/ templates/traffic.tmpl traffic.obda ;;
    *) break;;
  esac; shift; shift
done

#TODO limit the number of stream per obda file
#TODO mixed mapping generation aka an experiment