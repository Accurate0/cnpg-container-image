FROM ghcr.io/cloudnative-pg/postgresql:16.9-6

USER root
RUN set -xe ;\
    apt update && apt install build-essential pgxnclient -y;


RUN set -xe ;\
    apt install timescaledb-2-postgresql-16 -y;

RUN pgxn install pgmq==1.5.1;

RUN usermod -u 26 postgres

USER 26
