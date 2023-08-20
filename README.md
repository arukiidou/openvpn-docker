# sshpass-docker

simple sshpass with alpine image.

Github: https://github.com/arukiidou/sshpass-docker
DockerHub: https://hub.docker.com/r/arukiidou/sshpass

### Usage

```
Usage: sshpass [-f|-d|-p|-e[env_var]] [-hV] command parameters
   -f filename   Take password to use from file.
   -d number     Use number as file descriptor for getting password.
   -p password   Provide password as argument (security unwise).
   -e[env_var]   Password is passed as env-var "env_var" if given, "SSHPASS" otherwise.
   With no parameters - password will be taken from stdin.
   -P prompt     Which string should sshpass search for to detect a password prompt.
   -v            Be verbose about what you're doing.
   -h            Show help (this screen).
   -V            Print version information.
At most one of -f, -d, -p or -e should be used.
```

### Dockerfile

```Dockerfile
# syntax=docker.io/docker/dockerfile:1.6

ARG ALPINE_VERSION=3.18
ARG SSHPASS_VERSION=1.10

FROM alpine:${ALPINE_VERSION}
ARG VERSION
ARG SSHPASS_VERSION

RUN apk add --no-cache openssh-client-default~=9 sshpass~=${SSHPASS_VERSION}
```
