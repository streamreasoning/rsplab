OUTPUT_FILE = citybench.obda
NEXT=false

traffic:
	sh templates/launcher.sh data/streams/traffic templates/traffic.tmpl traffic_mappings.tmp

run: traffic build

build: 
	sh build.sh $(OUTPUT_FILE) $(NEXT)

clean:
	rm -rf *tmp