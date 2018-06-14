#!/usr/bin/env bash

echo
echo "Deploying Application"

container_port=$(jq -r .deploy.containerPort pipeline.json)
registry=$(jq -r .archive.registry pipeline.json)
repository=$(jq -r .archive.repository pipeline.json)
image="${registry}/${repository}:latest"

docker run -dp "${container_port}:${container_port}" "${image}"
