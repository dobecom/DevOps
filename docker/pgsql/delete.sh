#!/bin/bash

files="-f pgyml/networks.yml -f pgyml/volumes.yml -f pgyml/services.yml"
docker-compose $files down --volumes
docker volume rm pg_master_data --force
docker volume rm pg_slave1_data --force
docker-compose $files ps
