#!/bin/bash

files="-f pgyml/networks.yml -f pgyml/volumes.yml -f pgyml/services.yml"
docker-compose $files up -d
docker-compose $files ps
