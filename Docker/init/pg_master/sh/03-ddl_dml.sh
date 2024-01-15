#!/bin/bash
psql --username "$SERVICE_ADMIN_ID" -d "$SERVICE_DB" -f /sql/00-ddl.sql
psql --username "$SERVICE_ADMIN_ID" -d "$SERVICE_DB" -f /sql/01-dml.sql