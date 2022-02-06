SHELL := /bin/bash

build:
	DOCKER_BUILDKIT=1 docker build . -t test/icu:latest
