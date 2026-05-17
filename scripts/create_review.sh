#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-/Users/nikolajflojgaard/.openclaw/workspace/stock-playbook}"
TICKER="${2:?ticker required}"
COMPANY="${3:-$TICKER}"
GATES="${4:-}"

cd "$ROOT"
if [[ -n "$GATES" ]]; then
  python3 generate_stock_review.py "$TICKER" "$COMPANY" --gates-passed "$GATES"
else
  python3 generate_stock_review.py "$TICKER" "$COMPANY"
fi
