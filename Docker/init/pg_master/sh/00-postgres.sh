#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB"  <<-EOSQL

/* -------------------------------------------------------------------------------------------
** 1. Create DB 
** ------------------------------------------------------------------------------------------- */

/** 1-1. Create Project User */
CREATE ROLE $SERVICE_ADMIN_ID WITH LOGIN PASSWORD '$SERVICE_ADMIN_PW'; 
CREATE ROLE $SERVICE_USER_ID WITH LOGIN PASSWORD '$SERVICE_USER_PW'; 

/** 1-2. Create Project DB */
CREATE DATABASE $SERVICE_DB WITH OWNER=$SERVICE_ADMIN_ID;


/* -------------------------------------------------------------------------------------------
** 2. Revoke postgres (For Access Block)
** ------------------------------------------------------------------------------------------- */

REVOKE ALL ON DATABASE $POSTGRES_DB FROM public;
REVOKE ALL ON SCHEMA public FROM public;

EOSQL
