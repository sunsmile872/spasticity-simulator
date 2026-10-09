#!/usr/bin/env bash
# Local wrapper invoking the global git-checkpoint skill engine
set -euo pipefail

WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GLOBAL_SCRIPT="$HOME/.gemini/config/skills/git-checkpoint/scripts/git_checkpoint.sh"

if [ -f "$GLOBAL_SCRIPT" ]; then
  exec "$GLOBAL_SCRIPT" save "$WORKSPACE_DIR" "${1:-""}"
else
  # Fallback to local git commit & push
  cd "$WORKSPACE_DIR"
  if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "${1:-"checkpoint: save state ($(date +'%Y-%m-%d %H:%M:%S'))"}"
    git push origin "$(git branch --show-current)"
  fi
fi
