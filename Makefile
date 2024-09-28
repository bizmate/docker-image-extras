SHELL := /usr/bin/env bash
PROJECT_ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
#CURRENT_DIR := ${PWD##*/}
CURRENT_DIR := $(pwd -P | echo xargs basename --;)
#CURRENT_DIR := $(basename /home/bizmate/Documents/siti-web/docker-image-extras)

build:
	bin/build_env.sh && docker buildx build -t  .

push:
	bin/build_env.sh && docker compose  -f docker-compose.yml -f docker-compose.prodtest.yml push

shell:
	export UID && docker-compose exec php bash

test:
	@echo Project root $(PROJECT_ROOT)
	@echo Current dir $(CURRENT_DIR)
	@echo $(MAKEFILE_LIST)
	@echo $(lastword $(MAKEFILE_LIST))
	@echo $(basename $(PWD))
	@echo $(basename /home/bizmate/Documents/siti-web/docker-image-extras)
	@echo 123

env:
	bin/build_env.sh && env
