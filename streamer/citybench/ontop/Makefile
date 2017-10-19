IMG_TAG=citybench-data-server
CNT_NAME=data-server

run: 
	docker run --link 	postgres:postgres --name $(CNT_NAME) -p 8080:8080 $(IMG_TAG) 

clean:
	docker rm $(CNT_NAME)

build:
	docker build -t $(IMG_TAG) . 
	