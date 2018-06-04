#!/usr/bin/env sh

echo
echo "Cloning Application"

git clone "${GITHUB_URL:?}" .
