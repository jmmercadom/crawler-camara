FROM alpine:latest

RUN apk update
RUN apk add bash
RUN apk add ncurses
RUN apk add parallel
RUN apk add curl
RUN apk add jq

WORKDIR /camara
ADD . /camara

ENTRYPOINT ["./camara"]
