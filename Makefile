
VERSION = 0.0.1
USER = ixl123

CONTAINER = $(USER)/$(shell basename $(PWD)):$(VERSION)

all: build push

build:
	docker build -t $(CONTAINER) -f Dockerfile .

push:
	docker push $(CONTAINER)
