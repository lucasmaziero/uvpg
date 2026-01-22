#!/usr/bin/env bash
set -euo pipefail

# -------------------------
# Python caches
# -------------------------
echo "Removing Python cache files"
find . -type d -name '__pycache__' -exec rm -rf {} + 2>/dev/null || true
find . -type d -name '*.egg-info' -exec rm -rf {} + 2>/dev/null || true
find . -type f -name '*.pyc' -delete 2>/dev/null || true
find . -type d -name '.pytest_cache' -exec rm -rf {} + 2>/dev/null || true
find . -type d -name '.ruff_cache' -exec rm -rf {} + 2>/dev/null || true
find . -type f -name '*.Identifier' -delete 2>/dev/null || true

# -------------------------
# Build artifacts
# -------------------------
echo "Removing build artifacts"
find . -type d -name 'dist' -exec rm -rf {} + 2>/dev/null || true
find . -type d -name 'build' -exec rm -rf {} + 2>/dev/null || true
