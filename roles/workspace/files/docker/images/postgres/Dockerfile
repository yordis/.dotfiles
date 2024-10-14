ARG PG_MAJOR=17
ARG DEBIAN_VERSION=bookworm

FROM postgres:${PG_MAJOR}-${DEBIAN_VERSION} as release

RUN apt-get update && \
    apt-get install -y postgresql-${PG_MAJOR}-pgvector

COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so
COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control
COPY --from=ghcr.io/fboulnois/pg_uuidv7:1.6.0 /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.6.sql /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.6.sql

COPY init.sql /docker-entrypoint-initdb.d/
