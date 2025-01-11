FROM alpine:3.21

ENV TZ=Asia/Shanghai

RUN apk add --no-cache tzdata nginx gettext curl && \
    rm -rf /var/cache/apk/* /tmp/*

COPY --chmod=755 ./rootfs /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]