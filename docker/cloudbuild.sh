#!/bin/bash

PROJECT_ID=${1:-"tzklflb-ai"}
REGION=${2:-"asia-northeast1"}
DIFY_API_VERSION=${3:-"latest"}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Nginx Build and Push
bash "${SCRIPT_DIR}/build-nginx.sh" "${PROJECT_ID}" "${REGION}"

# API Build and Push
bash "${SCRIPT_DIR}/build-api.sh" "${PROJECT_ID}" "${REGION}" "${DIFY_API_VERSION}"
