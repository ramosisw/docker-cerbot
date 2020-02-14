FROM alpine

LABEL maintainer "https://github.com/ramosisw"

RUN \
    apk update && \
    apk add --no-cache && \
    certbot && \
    ca-certificates && \
    openssl

ENTRYPOINT ["certbot"]

CMD ["--help"]