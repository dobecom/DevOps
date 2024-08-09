#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$SERVICE_DB"  <<-EOSQL

/** ------- Publication ------- */

CREATE SUBSCRIPTION repl_slot_01 
  CONNECTION 'host=172.21.0.101 user=$REPLICA_ID dbname=$SERVICE_DB password=$REPLICA_PW'
  PUBLICATION repl_slot_01;

EOSQL