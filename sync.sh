#!/bin/bash
# Sync local changes to GitHub.
# Usage:
#   bash sync.sh                       # default msg = timestamp
#   bash sync.sh "feat: added example" # custom msg
cd "$(dirname "$0")" || exit 1
MSG="${1:-Update $(date '+%Y-%m-%d %H:%M')}"
git add -A
git status -s
if git diff --cached --quiet; then
  echo "no changes to sync"
  exit 0
fi
git commit -m "$MSG"
git push
echo "synced: $MSG"
echo "https://github.com/TheCleanerH/coach-mode-protocol"
