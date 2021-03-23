#!/bin/bash
set -e
echo 'Logged in as ' $(oc whoami)

NAMESPACE=${1:-eclipse-che}
oc create secret -n $NAMESPACE \
    generic github-client \
    --from-literal=client-id="${GITHUB_CLIENT_ID}" \
    --from-literal=client-secret="${GITHUB_CLIENT_SECRET}"