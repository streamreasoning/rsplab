CNTNR_NAME=tw_fuseki_running
IMG_TAG=tw_fuseki

ARGS=--log

all: run

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run -p 4000:4000 -p 4040:4040 -p 4242:4242 -it --link fuseki:fuseki --name $(CNTNR_NAME) $(IMG_TAG) $(ARGS)