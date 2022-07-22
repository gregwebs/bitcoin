#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

IMAGE_NAME=${IMAGE_NAME:-"bitcoin-builder"}
cat /etc/group | grep -e "^$(whoami)" > group
cat /etc/passwd | grep -e "^$(whoami)" > passwd
docker build . -t "${IMAGE_NAME}"

