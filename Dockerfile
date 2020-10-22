FROM alpine
MAINTAINER Saranraj Sekar <saranrajmalar@gmail.com>

RUN apk add tzdata
RUN apk add --update --no-cache ca-certificates