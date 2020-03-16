FROM docker:dind
MAINTAINER Diego Gullo <diego_gullo@bizmate.biz>

RUN apk add --update make
RUN apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev && \
	pip install docker-compose
RUN apk add bash
