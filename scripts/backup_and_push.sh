#!/usr/bin/env bash
# Automated Git Sync & GitHub Push Utility for Spasticity Simulator
# Uses Git commits as pure version control without cluttering local disk
set -euo pipefail

WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$WORKSPACE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
COMMIT_MSG="${1:-"auto-sync: update spasticity simulator ($TIMESTAMP)"}"

# 1. Sync Spasticity_Interactive_Simulation.html and index.html if one is newer
if [ -f "index.html" ] && [ -f "Spasticity_Interactive_Simulation.html" ]; then
  if [ "index.html" -nt "Spasticity_Interactive_Simulation.html" ]; then
    cp "index.html" "Spasticity_Interactive_Simulation.html"
  elif [ "Spasticity_Interactive_Simulation.html" -nt "index.html" ]; then
    cp "Spasticity_Interactive_Simulation.html" "index.html"
  fi
fi

# 2. Git commit & Push directly to GitHub
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "$COMMIT_MSG"
  git push origin main
  echo "✅ Changes successfully committed and pushed to GitHub main: $COMMIT_MSG"
else
  echo "ℹ️ No changes detected to commit."
fi
