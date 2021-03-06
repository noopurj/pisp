#!/usr/bin/env bash

PATH=$(npm bin):$PATH
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
POSTMAN_DIR="${DIR}/.."

newman run \
  --delay-request=2000 \
  --folder='payeefsp (p2p transfers)' \
  --environment=${POSTMAN_DIR}/environments/Mojaloop-Local-Docker-Compose.postman_environment_DFSP_PAYEE.json \
  ${POSTMAN_DIR}/OSS-New-Deployment-FSP-Setup.postman_collection_DFSPs.json
