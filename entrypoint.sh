#!/bin/sh

test -n "$DOCKER_HOST" -o -S /run/docker.sock || {
  echo "Need to define DOCKER_HOST or map /run/docker.sock" >&2
  exit 1
}

test -n "$*" -a -n "$CONTAINERS" || {
  echo "Need to define CONTAINERS environment variable and give file[:mask] pattern as args (cf. inotifyd help)" >&2
  exit 1
}

exec inotifyd /restart-containers.sh "$@"
