#!/usr/bin/env bash

# Run envbuilder on this repo!
docker run -it --rm \
    -v $PWD:/workspaces/devcontainer-webinar \
    -v /tmp/envbuilder-cache:/cache \
    -e GIT_URL=https://github.com/coder/devcontainer-webinar \
    -e INIT_SCRIPT=bash \
    -e LAYER_CACHE_DIR=/cache \
    ghcr.io/coder/envbuilder
