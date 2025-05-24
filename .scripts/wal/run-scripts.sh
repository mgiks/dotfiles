set -euo pipefail

scripts="$(fd . "$HOME/.scripts/wal" | grep -v -E '(run-scripts.sh|wal.sh)')"
echo SCRIPTS $scripts
bash "$scripts"
