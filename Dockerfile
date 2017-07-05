FROM alpine:latest

ADD ./slacksend /usr/local/bin/slacksend

RUN apk add --update curl bash && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/slacksend"]
