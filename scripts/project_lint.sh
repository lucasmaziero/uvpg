#!/usr/bin/env bash
set -euo pipefail

# -------------------------
# Ruff - Lint
# -------------------------
echo "Ruff: lint"
ruff check

# -------------------------
# Ruff - Format check
# -------------------------
echo "Ruff: format check"
ruff format --check

# -------------------------
# Ty - Type checking
# -------------------------
echo "Ty: type checking"
ty check
