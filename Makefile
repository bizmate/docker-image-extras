SHELL := /usr/bin/env bash
PROJECT_ROOT := $(shell basename $(PWD))

build:
	source ./bin/build_env.sh && docker buildx build -t diegogullo/$(PROJECT_ROOT):$(TAG) .

push:
	source ./bin/build_env.sh && docker image push diegogullo/$(PROJECT_ROOT):$(TAG)

shell:
	export UID && docker run -it --rm diegogullo/$(PROJECT_ROOT):$(TAG) sh
