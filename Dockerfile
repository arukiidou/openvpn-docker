# syntax=docker.io/docker/dockerfile:1.6

ARG ALPINE_VERSION=3.19

FROM alpine:${ALPINE_VERSION}
ARG VERSION

RUN apk add --no-cache openvpn~=2.6 tzdata~=2024a git~=2.43

LABEL org.opencontainers.image.authors="arukiidou <arukiidou@yahoo.co.jp>"
LABEL org.opencontainers.image.url="https://github.com/arukiidou/sshpass-docker"
LABEL org.opencontainers.image.documentation="Build sshpass docker image."
LABEL org.opencontainers.image.source="https://github.com/arukiidou/sshpass-docker/blob/main/Dockerfile"
LABEL org.opencontainers.image.version="alpine${ALPINE_VERSION}"
LABEL org.opencontainers.image.licenses="MIT"
