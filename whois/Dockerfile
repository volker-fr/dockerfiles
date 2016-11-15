FROM alpine:latest
MAINTAINER Volker <lists.volker@gmail.com>

RUN apk --no-cache add \
	--repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
	whois

ENTRYPOINT [ "/usr/bin/whois" ]
