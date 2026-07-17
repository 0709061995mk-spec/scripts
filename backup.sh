#!/usr/bin/env bash
set -euo pipefail

SOURCE="${1:?Usage:./backup.sh<folder>}"
DEST="$HOME/backups"
STAMP=$(date+%Y-%m-%d_%H%M)

mkdir -p "$DEST"
tar -czf "$DEST/bk_$STAMP.tar.gz"
echo "Saved $DEST/bk_$STAMP.tar.gz"
