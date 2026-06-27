#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 /path/to/project" >&2
  exit 2
fi

PROJECT_DIR="$1"

if [[ ! -e "$PROJECT_DIR" ]]; then
  echo "Project path does not exist: $PROJECT_DIR" >&2
  exit 1
fi

if [[ ! -d "$PROJECT_DIR" ]]; then
  echo "Project path is not a directory: $PROJECT_DIR" >&2
  exit 1
fi

copy_file() {
  local source_file="$1"
  local target_file="$2"

  mkdir -p "$(dirname -- "$target_file")"
  cp -- "$source_file" "$target_file"
  echo "Synced file: $target_file"
}

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
    echo "Synced $label: $target_file"
  done < <(find "$source_dir" -type f -print0 | sort -z)
}

copy_file "$ROOT_DIR/AGENTS.md" "$PROJECT_DIR/AGENTS.md"
copy_tree "$ROOT_DIR/.codex/agents" "$PROJECT_DIR/.codex/agents" "agent"
copy_tree "$ROOT_DIR/.agents/skills" "$PROJECT_DIR/.agents/skills" "skill"
copy_tree "$ROOT_DIR/workflows" "$PROJECT_DIR/workflows" "workflow"
copy_tree "$ROOT_DIR/templates" "$PROJECT_DIR/templates" "template"

echo "Project sync complete: $PROJECT_DIR"
