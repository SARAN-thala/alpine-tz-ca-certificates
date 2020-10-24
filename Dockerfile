FROM alpine

ENV LABEL_MAINTAINER="Saranraj Sekar" \
    LABEL_VENDOR="saranraj" \
    LABEL_IMAGE_NAME="saranraj/alpine-tz-ca-certificates" \
    LABEL_URL="https://hub.docker.com/r/saranraj/alpine-tz-ca-certificates/" \
    LABEL_VCS_URL="https://github.com/SARAN-thala/alpine-tz-ca-certificates" \
    LABEL_DESCRIPTION="Alpine image build with tzdata (timezone) and CA certificates pre-installed." \
    LABEL_LICENSE="MIT"

RUN apk add --update --no-cache \
    ca-certificates \
    tzdata

ARG LABEL_VERSION="latest"
ARG LABEL_BUILD_DATE
ARG LABEL_VCS_REF

# Build-time metadata as defined at http://label-schema.org
LABEL maintainer=$LABEL_MAINTAINER \
      org.label-schema.build-date=$LABEL_BUILD_DATE \
      org.label-schema.description=$LABEL_DESCRIPTION \
      org.label-schema.name=$LABEL_IMAGE_NAME \
      org.label-schema.schema-version="1.0" \
      org.label-schema.url=$LABEL_URL \
      org.label-schema.license=$LABEL_LICENSE \
      org.label-schema.vcs-ref=$LABEL_VCS_REF \
      org.label-schema.vcs-url=$LABEL_VCS_URL \
      org.label-schema.vendor=$LABEL_VENDOR \
      org.label-schema.version=$LABEL_VERSION