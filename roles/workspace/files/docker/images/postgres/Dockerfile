ARG PG_MAJOR=17
ARG DEBIAN_VERSION=bookworm
ARG POSTGIS_MAJOR=3

FROM postgres:${PG_MAJOR}-${DEBIAN_VERSION} as release

RUN apt-get update && \
    apt-get install -y ca-certificates \
    postgresql-${PG_MAJOR}-pgvector \
    postgresql-${PG_MAJOR}-postgis-${POSTGIS_MAJOR} \
    postgis

COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so
COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control
COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.6.sql /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.6.sql

COPY init.sql /docker-entrypoint-initdb.d/
