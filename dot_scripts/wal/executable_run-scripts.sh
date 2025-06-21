set -euo pipefail

scripts=("$(fd . -tf -d1 "$HOME/.scripts/wal" | grep -v -E '(run-scripts.sh|wal.sh)')")
echo "Ran scripts:"

for script in "${scripts[@]}"; do
    echo "$script"
done

bash -c "${scripts[@]}"
