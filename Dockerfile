FROM alpine
LABEL maintainer="Saranraj Sekar"

RUN apk add --update --no-cache \
    ca-certificates \
    tzdata