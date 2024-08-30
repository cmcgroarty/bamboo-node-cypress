#!/bin/bash
set -e

for v in */; do
	tag="${v%-slim/}"
	dir="${v%/}"
	sed "s/%VERSION%/$dir/g" Dockerfile.template >"$dir/Dockerfile"
	./build.sh "$tag"
done

docker image push --all-tags cmcg/bamboo-node-cypress
