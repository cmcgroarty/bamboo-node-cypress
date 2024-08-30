#!/bin/bash
set -e

for v in */; do
	dir="${v%/}"
  v="${v%-slim/}"
  sed "s/%VERSION%/$v/g" Dockerfile.template > "$dir/Dockerfile"
done
