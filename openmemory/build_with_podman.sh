#!/bin/bash

set -e

echo "Building backend image..."
podman build -t mem0/openmemory-mcp:latest api

if [ -f ui/Dockerfile ]; then
  echo "Building UI image..."
  podman build -t mem0/openmemory-ui:latest ui
else
  echo "Warning: ui/Dockerfile not found — skip ui image build"
fi

echo "Done. Please set ENV variables and run ./run_with_podman.sh"
