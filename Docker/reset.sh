#!/bin/bash

files="-f yml/networks.yml -f yml/volumes.yml -f yml/services.yml"
docker-compose $files down --volumes
docker volume rm pg_master_data --force
docker volume rm pg__data --force
docker-compose $files up -d
docker-compose $files ps
