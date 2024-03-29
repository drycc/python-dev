VERSION ?= $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
DEV_REGISTRY ?= registry.drycc.cc
DRYCC_REGISTRY ?= ${DEV_REGISTRY}
IMAGE_PREFIX ?= drycc
IMAGE := ${DRYCC_REGISTRY}/${IMAGE_PREFIX}/python-dev:${VERSION}
PLATFORM ?= linux/amd64,linux/arm64

build:
	podman build --build-arg CODENAME=${CODENAME} -t ${IMAGE} rootfs

push: build
	podman push ${IMAGE}

test: build
	podman run --rm ${IMAGE} flake8 /usr/local/bin/netcat