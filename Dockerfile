FROM debian:bookworm-slim

RUN apt update && \
    apt install -y --no-install-recommends libreoffice

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
