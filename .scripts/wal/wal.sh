set -euo pipefail

wal -i "${1:-}" --saturate 1.0 --contrast 21.0

"$HOME/.scripts/wal/run-scripts.sh"
