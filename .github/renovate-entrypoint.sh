#!/usr/bin/env bash

set -e

if [ -z "${RENOVATE_TOKEN}" ]; then
  echo "RENOVATE_TOKEN is not set. Exiting..."
  exit 1
fi

git config --global url."https://x-access-token:${RENOVATE_TOKEN}@github.com/".insteadOf "https://github.com/"
git config --global url."https://x-access-token:${RENOVATE_TOKEN}@github.com/".insteadOf "git@github.com:"

renovate
