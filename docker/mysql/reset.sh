#!/bin/bash

files="-f myyml/networks.yml -f myyml/volumes.yml -f myyml/services.yml"
docker-compose $files down --volumes
docker-compose $files up -d
docker-compose $files ps