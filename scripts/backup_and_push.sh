#!/usr/bin/env bash
# Automated Backup & GitHub Push Utility for Spasticity Simulator
set -euo pipefail

WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$WORKSPACE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
COMMIT_MSG="${1:-"auto-backup: sync code changes ($TIMESTAMP)"}"

mkdir -p backups

# 1. Local timestamped file snapshots
if [ -f "index.html" ]; then
  cp "index.html" "backups/index_${TIMESTAMP}.html"
fi
if [ -f "Spasticity_Interactive_Simulation.html" ]; then
  cp "Spasticity_Interactive_Simulation.html" "backups/Spasticity_Interactive_Simulation_${TIMESTAMP}.html"
fi

# Keep only the 10 most recent backups to save disk space
ls -1t backups/*.html 2>/dev/null | tail -n +21 | xargs rm -f 2>/dev/null || true

# 2. Sync Spasticity_Interactive_Simulation.html and index.html if one is newer
if [ "index.html" -nt "Spasticity_Interactive_Simulation.html" ]; then
  cp "index.html" "Spasticity_Interactive_Simulation.html"
elif [ "Spasticity_Interactive_Simulation.html" -nt "index.html" ]; then
  cp "Spasticity_Interactive_Simulation.html" "index.html"
fi

# 3. Git commit & Push
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "$COMMIT_MSG"
  git push origin main
  echo "✅ Changes successfully committed and pushed to GitHub main: $COMMIT_MSG"
else
  echo "ℹ️ No changes detected to commit."
fi
