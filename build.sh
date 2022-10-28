#!/usr/bin/env bash

set -ex

IMAGE_TAG=${IMAGE_TAG:-local/l2geth:rosetta-tracer}

mkdir -p build && cd build

git clone https://github.com/ethereum-optimism/optimism && cd optimism
git checkout inphi/l2geth-rosetta-tracer
docker build --tag $IMAGE_TAG --file ./l2geth/Dockerfile .
