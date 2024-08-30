#!/bin/bash
set -e
tag=${1:-lts}
docker build -t cmcg/bamboo-node-cypress:"$tag" ./"$tag"