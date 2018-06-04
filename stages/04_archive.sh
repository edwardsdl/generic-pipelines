#!/usr/bin/env sh

echo
echo "Archiving Application"

registry=$(jq -r .archive.registry pipeline.json)
namespace=$(jq -r .archive.namespace pipeline.json)
repository=$(jq -r .archive.repository pipeline.json)
image="${registry}/${namespace}/${repository}:latest"

docker login \
    -u "${DOCKER_USERNAME?:}" \
    -p "${DOCKER_PASSWORD?:}" \
    "${registry}"
docker build -t "${image}" .
docker push "${image}"
