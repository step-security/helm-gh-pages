FROM alpine:3.21.3

RUN apk add --no-cache ca-certificates curl bash tar jq git

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
