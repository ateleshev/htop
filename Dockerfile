FROM alpine:3.8

RUN apk update \
 && apk upgrade \
 && apk add htop

COPY htoprc /etc/htoprc

WORKDIR /
ENTRYPOINT ["/usr/bin/htop"]
