#! /usr/bin/env bash
set -euo pipefail

scripts=$(fd . -tf -d1 "$HOME/.scripts/wal/color-scripts/")
echo "Ran scripts:"

for script in "${scripts[@]}"; do
    echo "$script"
done

bash -c "${scripts[@]}"
