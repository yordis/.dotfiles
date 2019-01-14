# Postgis Service

Creates a PostgreSQL database with Postgis extensions enabled.

## Troubleshooting

## Creating a user

By default the container only has `postgres` user based n `.env` configuration.

1. Print all running containers `docker ps`.
2. Copy the container name or id.
3. Do `docker ps` and copy the container name.
4. `bash` into the container `docker exec -it "CONTAINER_NAME_OR_ID" bash`.
5. Connect to the database `pgsql postgres postgres`.
6. Create a new user `CREATE ROLE ubi PASSWORD '' LOGIN CREATEDB SUPERUSER;`.
7. Verify that your user was created `SELECT * FROM pg_roles;`.
