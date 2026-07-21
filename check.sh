#!/usr/bin/env bash
set -euo pipefail
test -f README.md || { echo "README missing"; exit 1; }
echo "Project structure OK"