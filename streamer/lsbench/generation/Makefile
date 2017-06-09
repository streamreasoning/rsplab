CNTNR_NAME=lsgen_running
IMG_TAG=lsgen

all: run

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run -it -v $(PWD)/tmp:/generator/tmp -v $(PWD)/output:/generator/output --name $(CNTNR_NAME) $(IMG_TAG)