for p in `docker ps --format {{.ID}}`;
do 
	
	for port in `docker port $p | awk '{print $3}' | awk '{split($0,a,":"); print a[2]}'`; do
		if [[ ${port} -gt 4040 && ${port} -eq 80 ]]; then
      			continue
    		fi	
		echo "curl -GET localhost:$port"
		curl -GET localhost:$port/start &
	done
done

