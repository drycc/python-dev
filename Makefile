VERSION := $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
REGISTRY ?= quay.io/
IMAGE_PREFIX ?= drycc
IMAGE := ${REGISTRY}${IMAGE_PREFIX}/python-dev:${VERSION}

build:
	docker build -t ${IMAGE} rootfs

push: build
	docker push ${IMAGE}
