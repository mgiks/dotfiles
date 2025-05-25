set -euo pipefail

wal --saturate 1.0 --contrast 21.0 "${@:-}"

"$HOME/.scripts/wal/run-scripts.sh"
