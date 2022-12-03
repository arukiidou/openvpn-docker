FROM alpine:3.17

RUN apk add --no-cache openssh-client-default~=9 sshpass=1.09-r1
