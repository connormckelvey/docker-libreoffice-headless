DOCKER_IMAGE_REPOSITORY ?= libreoffice-headless
DOCKER_IMAGE_TAG ?= unstable

.PHONY: all build test push

default: all

all: build test push

build:
	docker build -t $(DOCKER_IMAGE_REPOSITORY):$(DOCKER_IMAGE_TAG) .

test: build
	./scripts/run-tests.sh

push:
	docker push $(DOCKER_IMAGE_REPOSITORY):$(DOCKER_IMAGE_TAG)
