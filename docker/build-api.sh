#!/bin/bash

PROJECT_ID=${1:-"tzklflb-ai"}
REGION=${2:-"asia-northeast1"}
DIFY_API_VERSION=${3:-"latest"}

# API Build and Push
pushd docker/api
gcloud builds submit \
--config=cloudbuild.yaml \
--substitutions=_REGION=${REGION},_PROJECT_ID=${PROJECT_ID},_DIFY_API_VERSION=${DIFY_API_VERSION}
popd
