#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE EXTENSION postgis;
	CREATE EXTENSION hstore;
	ALTER TABLE geometry_columns OWNER TO ${POSTGRES_USER};
	ALTER TABLE spatial_ref_sys OWNER TO ${POSTGRES_USER};
EOSQL