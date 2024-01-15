#!/bin/bash

files="-f yml/networks.yml -f yml/volumes.yml -f yml/services.yml"
docker-compose $files up -d
docker-compose $files ps
