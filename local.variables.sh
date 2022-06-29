#!/bin/bash

export KONG_IMAGE="kong/kong-gateway:2.8.1.0-alpine"
export KONG_ADMIN_API_URI="http://localhost:8001"
export KONG_ADMIN_GUI_URL="http://localhost:8002"
export KONG_PORTAL_GUI_HOST="localhost:8003"
export KONG_PORTAL_API_URL="http://localhost:8004"
export KONG_PROXY_URI="http://localhost:8000"
export KONG_GW_NAME="localhost"
export KONG_LICENSE_PATH="/srv/shared/license/demo-license.trueability.json"
export KONG_ADMIN_TOKEN=mytoken
