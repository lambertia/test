TAG_32 := docker.daintree.net:5000/etc/daintree_32:latest
TAG_64 := docker.daintree.net:5000/etc/daintree_64:latest

all: build

build: Dockerfile_32 Dockerfile_64
	docker build --pull -t $(TAG_32) -f Dockerfile_32 .
	docker build --pull -t $(TAG_64) -f Dockerfile_64 .

push:
	docker push $(TAG_32)
	docker push $(TAG_64)
