
VERSION = 0.1

CONTAINER = $(USER)/$(shell basename $(PWD)):$(VERSION)

all: build push

build:
	docker build -t $(CONTAINER) -f Dockerfile .

push:
	docker push $(CONTAINER)
