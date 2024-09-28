FROM docker:27-dind
LABEL org.opencontainers.image.authors="diego_gullo@bizmate.biz"

RUN apk add --update --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make bash git
