#!/bin/sh
set -e

# Build and run as a wrapped CLI locally
docker build -t local-vale .
docker run --rm -v $(pwd):/project_root -w /project_root local-vale "$@" #--minAlertLevel=suggestions --no-wrap .

# Build and run interactive with bash
# docker build -t local-vale . && docker run -it --entrypoint /bin/bash local-vale