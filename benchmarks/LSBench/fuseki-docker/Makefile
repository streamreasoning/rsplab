CNTNR_NAME=fuseki
IMG_TAG=fuseki
ARGS=--log
IT=-d
PORT=3030
all: run

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run $(IT) -p 3030:$(PORT) --name $(CNTNR_NAME) $(IMG_TAG)