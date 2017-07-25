FROM alpine:latest

RUN apk update
RUN apk add bash ncurses

WORKDIR /camara
ADD . /camara

ENTRYPOINT ["./camara"]
