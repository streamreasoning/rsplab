CNTNR_NAME=twcb_running
IMG_TAG=cb/triplewave

ARGS=--log

all: run

build_parent:
	docker rmi sr/tw; true
	docker build -t sr/tw parent/

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run -p 4000:4000 -p 4040:4040 -p 4242:4242 -d --link fuseki:fuseki --name $(CNTNR_NAME) $(IMG_TAG) $(ARGS)

quest:
	docker run -it --net quest_default --link quest:quest -p 4000:4000 -p 4040:4040 -p 4242:4242 --name $(CNTNR_NAME) $(IMG_TAG) $(ARGS)
