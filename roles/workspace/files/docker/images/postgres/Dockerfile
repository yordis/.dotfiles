ARG PG_MAJOR=16
ARG DEBIAN_VERSION=bookworm
ARG PG_UUIDV7_BASE=ghcr.io/fboulnois/pg_uuidv7:1.5.0

FROM postgres:${PG_MAJOR}-${DEBIAN_VERSION} as release

RUN apt-get update && \
    apt-get install -y postgresql-${PG_MAJOR}-pgvector

COPY --from=${PG_UUIDV7_BASE} /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so /usr/lib/postgresql/${PG_MAJOR}/lib/pg_uuidv7.so
COPY --from=${PG_UUIDV7_BASE} /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7.control
COPY --from=${PG_UUIDV7_BASE} /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.5.sql /usr/share/postgresql/${PG_MAJOR}/extension/pg_uuidv7--1.5.sql
