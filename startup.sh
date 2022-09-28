#!/bin/bash

echo "Apply Variables"
source local.variables.sh
echo "Remove existing instance of Kong"
docker compose down

echo "Start Containers"
docker compose up -d db kong-cp kong-migrations kong-dp keycloak httpbin.local mockbin.local redis

echo "Apply License"
http POST :8001/licenses payload=@kgo/license.json Kong-Admin-Token:mytoken --ignore-stdin

echo "Stop CP Container"
docker compose stop kong-cp
echo "Remove CP Container"
docker compose rm -f kong-cp
echo "Startup CP Container"
docker compose up -d kong-cp
echo "Startup Deck Container"
docker compose up -d deck

