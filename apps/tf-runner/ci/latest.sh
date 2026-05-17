#!/usr/bin/env sh
set -eu

case "${1:-stable}" in
  stable)
    echo "0.16.3"
    ;;
  *)
    echo "unsupported channel: ${1}" >&2
    exit 1
    ;;
esac
