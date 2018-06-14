#!/usr/bin/env bash

echo
echo "Cloning Application"

git clone "${GITHUB_URL:?}" .
