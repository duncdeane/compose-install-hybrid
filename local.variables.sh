#!/bin/bash

export KONG_IMAGE="kong/kong-gateway:3.0.0.0-alpine"
export KONG_ADMIN_API_URI="http://localhost:8001"
export KONG_ADMIN_GUI_URL="http://localhost:8002"
export KONG_PORTAL_GUI_HOST="localhost:8003"
export KONG_PORTAL_API_URL="http://localhost:8004"
export KONG_PROXY_URI="http://localhost:8000"
export KONG_GW_NAME="localhost"
export KONG_LICENSE_PATH="/srv/shared/license/demo-license.trueability.json"
export KEYCLOAK_URI="http://keycloak:8080"
export KONG_ADMIN_TOKEN=mytoken
export KEYCLOAK_ISSUER=$KEYCLOAK_URI/auth/realms/kong/.well-known/openid-configuration
export KEYCLOAK_CLIENT_SECRET=681d81ee-9ff0-438a-8eca-e9a4f892a96b
export KEYCLOAK_ADMIN_PASSWORD=KongCert123!
