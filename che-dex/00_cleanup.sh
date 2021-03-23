#!/bin/bash
set -e
echo 'Logged in as ' $(oc whoami)

NAMESPACE=${1:-eclipse-che}
oc delete namespace $NAMESPACE