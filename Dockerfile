# syntax=docker.io/docker/dockerfile:1.6

ARG ALPINE_VERSION=3.18
ARG SSHPASS_VERSION=1.10

FROM alpine:${ALPINE_VERSION}
ARG VERSION
ARG SSHPASS_VERSION

RUN apk add --no-cache openssh-client-default~=9 sshpass~=${SSHPASS_VERSION}

LABEL org.opencontainers.image.authors="arukiidou <arukiidou@yahoo.co.jp>"
LABEL org.opencontainers.image.url="https://github.com/arukiidou/sshpass-docker"
LABEL org.opencontainers.image.documentation="Build sshpass docker image."
LABEL org.opencontainers.image.source="https://github.com/arukiidou/sshpass-docker/blob/main/Dockerfile"
LABEL org.opencontainers.image.version="${SSHPASS_VERSION}-alpine${ALPINE_VERSION}"