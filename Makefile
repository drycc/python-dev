VERSION ?= $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
DEV_REGISTRY ?= registry.drycc.cc
DRYCC_REGISTRY ?= ${DEV_REGISTRY}
IMAGE_PREFIX ?= drycc
IMAGE := ${DRYCC_REGISTRY}/${IMAGE_PREFIX}/python-dev:${VERSION}
PLATFORM ?= linux/amd64,linux/arm64

build:
	docker build -t ${IMAGE} rootfs


buildx:
	docker buildx build --platform ${PLATFORM} -t ${IMAGE} rootfs --push

push: build
	docker push ${IMAGE}

test: build
	docker run --rm ${IMAGE} flake8 /usr/local/bin/netcat