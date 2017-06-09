BASE_IMG=streamreasoning/twlsbench:latest
IMG_TAG=rsplab/twlsbench
CNTNR_NAME=lsbench_running

all: run

basebuild:
	docker rmi $(BASE_IMG); true
	docker build -t $(BASE_IMG) ./base

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)