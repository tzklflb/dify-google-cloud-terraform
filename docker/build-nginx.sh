#!/bin/bash

PROJECT_ID=${1:-"tzklflb-ai"}
REGION=${2:-"asia-northeast1"}

# Nginx Build and Push
pushd docker/nginx
gcloud builds submit \
--config=cloudbuild.yaml \
--substitutions=_REGION=${REGION},_PROJECT_ID=${PROJECT_ID}
popd
