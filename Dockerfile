FROM alpine
RUN apk add tzdata
RUN apk add --update --no-cache ca-certificates