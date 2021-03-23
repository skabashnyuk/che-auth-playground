#!/bin/bash
set -e
echo 'Logged in as ' $(oc whoami)

NAMESPACE=${1:-eclipse-che}
chectl server:deploy --installer=operator --platform=openshift --chenamespace $NAMESPACE