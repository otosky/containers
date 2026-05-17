#!/usr/bin/env sh
set -eu

if [ "$#" -gt 0 ] && command -v "$1" >/dev/null 2>&1; then
  exec "$@"
fi

exec tf-runner "$@"
