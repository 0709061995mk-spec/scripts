#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
	echo "Usage: ./backup.sh <folder>"
	exit 2
fi

SOURCE="$1"
DEST="$HOME/backups"
STAMP=$(date +%Y-%m-%d_%H%M)

mkdir -p "$DEST"
tar -czf "$DEST/bk_${STAMP}.tar.gz" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"
echo "Saved $DEST/bk_${STAMP}.tar.gz"
