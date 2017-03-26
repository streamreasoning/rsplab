CNTNR_NAME=city_wave_running
IMG_TAG=citywave

ARGS=experiments/AarhusPollutionData158505.properties

BASE_PORT=4000
BASE_WS_PORT=4040
HOST=localhost
BASE_URI=http://cbquest.westeurope.cloudapp.azure.com:8080/openrdf-sesame/repositories


all: run

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run -p 4013:4013 -p 4053:4053 -it --name $(CNTNR_NAME) $(IMG_TAG) 

properties:
	python tw_stream_gen.py $(HOST) $(BASE_PORT) $(BASE_WS_PORT) $(BASE_URI) properties.tmpl
	mkdir experiments ; mv *.properties experiments/ 