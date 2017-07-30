FROM alpine:latest

RUN apk update
RUN apk add bash
RUN apk add ncurses
RUN apk add parallel
RUN apk add curl
RUN apk add jq
RUN apk add python3
RUN apk add py-pip

RUN pip3 install --upgrade pip
RUN pip3 install bs4
RUN pip3 install unidecode
RUN pip3 install python-slugify

ENV JOBS=4

WORKDIR /camara
ADD . /camara

ENTRYPOINT ["./camara"]
