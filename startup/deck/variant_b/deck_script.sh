#!/bin/bash

#First check if the Kong-Admin-Token has been specified

if [ -z "$KONG_ADMIN_TOKEN" ]; then
    echo "Error - No admin token specified"
else

    for state_file in /tmp/shared/deck/*.yaml; do
        deck sync --kong-addr "$DECK_KONG_ADDR" --headers "kong-admin-token:$KONG_ADMIN_TOKEN" \
            --state "$state_file"
    done
    # deck sync --headers "kong-admin-token:$KONG_ADMIN_TOKEN" --state /tmp/shared/deck/01-kga-pbtb-setup-deck.yaml
    # deck sync --headers "kong-admin-token:$KONG_ADMIN_TOKEN" --state /tmp/shared/deck/03-kga-pbtb-setup-deck.yaml
fi
