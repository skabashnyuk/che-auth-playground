#!/bin/bash
set -e
echo 'Logged in as ' $(oc whoami)

NAMESPACE=${1:-eclipse-che}
oc apply -f dex.yaml --namespace=$NAMESPACE