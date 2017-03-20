#!/bin/bash
set -e

if docker ps | grep --silent rancher-server; then
  docker stop rancher-server > /dev/null
fi
if docker ps -a | grep --silent rancher-server; then
  docker rm -f rancher-server > /dev/null
fi

docker run -d --restart=always --name rancher-server -p 8080:8080 rancher/server:stable > /dev/null

echo -n "Starting rancher server on port 8080"
until $(curl --output /dev/null --silent --head --fail http://localhost:8080); do
  printf '.'
  sleep 2
done
echo
