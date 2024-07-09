#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$SERVICE_USER_ID" -d "$SERVICE_DB"  <<-EOSQL

/** ------- Grant ------- */
ALTER ROLE $SERVICE_USER_ID SET search_path TO $SERVICE_SCHEMA;

EOSQL