#! /usr/bin/env bash
set -euo pipefail

wal --saturate 1.0 -b '#000000' -n "${@:-}"

"$HOME/.scripts/wal/run-scripts.sh"
