#!/usr/bin/env sh

echo
echo "Deploying Application"

registry=$(jq -r .archive.registry pipeline.json)
namespace=$(jq -r .archive.namespace pipeline.json)
repository=$(jq -r .archive.repository pipeline.json)
image="${registry}/${namespace}/${repository}:latest"

docker run -dP "${image}"
