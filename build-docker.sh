#!/bin/bash

if [ -z "$1" ]; then
  PLATFORM="linux/amd64"
else
  PLATFORM="$1"
fi

echo "Building TBot Panel for platform: $PLATFORM"
docker buildx build --platform $PLATFORM --load -t tbot-panel .
