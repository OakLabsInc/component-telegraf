FROM telegraf:1.9.5-alpine

USER root

COPY config /config
COPY secrets /secrets
COPY entrypoint.sh /

RUN chmod -R 0400 /secrets \
    && chown -R root:root /secrets \
    && chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

ENV TELEGRAF_CONFIG="/etc/telegraf/telegraf.conf" \
    GOOGLE_ZONE="us-central1-a" \
    GOOGLE_APPLICATION_CREDENTIALS="/secrets/default-credentials.json"
