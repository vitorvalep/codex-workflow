#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

copy_tree() {
  local source_dir="$1"
  local target_dir="$2"
  local label="$3"

  if [[ ! -d "$source_dir" ]]; then
    echo "Missing source: $source_dir" >&2
    return 1
  fi

  mkdir -p "$target_dir"

  while IFS= read -r -d '' source_file; do
    local relative_path="${source_file#$source_dir/}"
    local target_file="$target_dir/$relative_path"
    mkdir -p "$(dirname -- "$target_file")"
    cp -- "$source_file" "$target_file"
    echo "Installed $label: $target_file"
  done < <(find "$source_dir" -type f -print0 | sort -z)
}

copy_tree "$ROOT_DIR/.codex/agents" "$HOME/.codex/agents" "agent"
copy_tree "$ROOT_DIR/.agents/skills" "$HOME/.agents/skills" "skill"

echo "Local installation complete."
