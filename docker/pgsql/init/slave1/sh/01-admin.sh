#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$SERVICE_ADMIN_ID" -d "$SERVICE_DB"  <<-EOSQL

/* -------------------------------------------------------------------------------------------
** 1. Revoke Permission (For Access Block)
** ------------------------------------------------------------------------------------------- */

REVOKE ALL ON DATABASE $SERVICE_DB FROM public;
REVOKE ALL ON SCHEMA public FROM public;

DROP SCHEMA public;

/* -------------------------------------------------------------------------------------------
** 2. Create Schema
** ------------------------------------------------------------------------------------------- */

CREATE SCHEMA $SERVICE_SCHEMA AUTHORIZATION $SERVICE_ADMIN_ID;


/* -------------------------------------------------------------------------------------------
** 3. Grant Admin
** ------------------------------------------------------------------------------------------- */

ALTER ROLE $SERVICE_ADMIN_ID SET search_path TO $SERVICE_SCHEMA;


/* -------------------------------------------------------------------------------------------
** 4. Grant 
** ------------------------------------------------------------------------------------------- */

GRANT connect, temporary ON DATABASE $SERVICE_DB to $SERVICE_USER_ID;
GRANT usage ON SCHEMA $SERVICE_SCHEMA to $SERVICE_USER_ID;
GRANT select, insert, update, delete ON ALL TABLES IN SCHEMA $SERVICE_SCHEMA TO $SERVICE_USER_ID;
GRANT usage ON ALL sequences IN SCHEMA $SERVICE_SCHEMA TO $SERVICE_USER_ID;
ALTER DEFAULT PRIVILEGES IN SCHEMA $SERVICE_SCHEMA GRANT select, insert, update, delete ON TABLES TO $SERVICE_USER_ID;
ALTER DEFAULT PRIVILEGES IN SCHEMA $SERVICE_SCHEMA GRANT usage ON SEQUENCES TO $SERVICE_USER_ID;

EOSQL
