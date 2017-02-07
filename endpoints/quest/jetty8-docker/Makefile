CNTNR_NAME=quest
IMG_TAG=jetty8-ontop
POSTGRES_CONTAINER=cb-postgres
all: run

build:
	#rm -rf ontop-jetty.tar && tar -zcf ontop-jetty.tar jetty8
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME); true

run: clean
	 docker run -it -p 8080:8080 --link $(POSTGRES_CONTAINER):postgres --name $(CNTNR_NAME) $(IMG_TAG)
