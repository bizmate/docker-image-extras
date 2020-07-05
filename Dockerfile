FROM docker:dind
MAINTAINER Diego Gullo <diego_gullo@bizmate.biz>

RUN apk add --update --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && \
	pip install docker-compose
RUN apk add bash git
