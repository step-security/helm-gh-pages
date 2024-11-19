FROM alpine:3.12.1

RUN apk add --no-cache ca-certificates curl bash tar jq git

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
