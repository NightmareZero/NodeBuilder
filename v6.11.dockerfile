FROM node:6.11-alpine

RUN addgroup -S dockerusers && adduser -S -G dockerusers docker && \
    mkdir /mnt/work && chown -R docker:dockerusers /mnt/work
RUN apk update && apk add --no-cache git openssh python make g++

VOLUME /mnt/work
WORKDIR /mnt/work

CMD /bin/sh
