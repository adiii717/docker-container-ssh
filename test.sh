#!/bin/bash
set -e
echo "start docker-compose"
docker-compose up -d
echo "list of containers"
docker-compose ps
echo "starting ssh test from f-db to f-app"
docker exec -it f-db sh -c "ssh -i /keys/ssh_test ubuntu@f-app"