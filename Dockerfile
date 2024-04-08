FROM debian:bookworm-slim

RUN apt -qq update && \
    apt -qq install -y --no-install-recommends libreoffice

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
