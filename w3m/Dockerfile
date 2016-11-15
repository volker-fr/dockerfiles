FROM debian:latest

RUN apt-get update && \
    apt-get install -y w3m && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/w3m"]
