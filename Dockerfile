FROM alpine

LABEL maintainer "https://github.com/ramosisw"

RUN \
    apk update && \
    apk add --no-cache certbot ca-certificates && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["certbot"]

CMD ["--help"]