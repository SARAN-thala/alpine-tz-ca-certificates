FROM alpine
MAINTAINER Saranraj Sekar <saranrajmalar@gmail.com>

RUN apk add --no-cache tzdata
RUN apk add --update --no-cache ca-certificates