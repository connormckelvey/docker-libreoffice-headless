.PHONY: all build test push

default: all

all: build test push

build:
	docker build -t ghcr.io/connormckelvey/libreoffice-headless:latest .

test: build
	./scripts/run-tests.sh

push:
	docker push ghcr.io/connormckelvey/libreoffice-headless:latest
