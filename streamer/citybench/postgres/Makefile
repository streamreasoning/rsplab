CNTNR_NAME=some-postgres
IMG_TAG=postgres
DEAFAULTDB=initdb
USER=root
PW=root
all: run

build:
	docker rmi $(IMG_TAG); true
	docker build -t $(IMG_TAG) .

clean:
	docker rm $(CNTNR_NAME)

run:
	docker run --name $(CNTNR_NAME) -p 5432:5432  -e POSTGRES_DB=$(DEAFAULTDB) -e POSTGRES_USER=$(USER) -e POSTGRES_PASSWORD=$(PW) -d $(IMG_TAG)

#csvsql  --db postgres://root:root@postgres:5432/initdb --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference AarhusTrafficData203769.csv