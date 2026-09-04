#!/bin/bash

set -euo pipefail

IMAGE="arch-makepkg"

podman build -t "$IMAGE" .

podman run --rm -it \
    --userns=keep-id \
	 --user "$(id -u):$(id -g)" \
    -v "$PWD:/build:Z" \
	 -w /build \
    "$IMAGE" \
    makepkg -s -C --noconfirm
