FROM postgres:15-bullseye

ENV PG_VERSION=15

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
  postgresql-${PG_VERSION}-postgis-3 \
  postgresql-${PG_VERSION}-postgis-3-scripts \
  postgis