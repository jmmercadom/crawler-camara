FROM alpine:latest

RUN apk update
RUN apk add bash ncurses parallel

WORKDIR /camara
ADD . /camara

ENTRYPOINT ["./camara"]
