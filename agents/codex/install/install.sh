#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-}"
TARGET_DIR="${2:-.}"

if [[ -z "$MODE" ]]; then
  echo "Usage: ./install.sh <greenfield|brownfield-adaptive> [target-dir]"
  exit 1
fi

TARGET_FILE="${TARGET_DIR%/}/AGENTS.md"
BASE_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"

BASE_FILE="$BASE_DIR/agents/codex/base/AGENTS.md"
STACK_FILE="$BASE_DIR/agents/codex/overlays/java-spring-hexagonal.md"

case "$MODE" in
  greenfield)
    MODE_FILE="$BASE_DIR/agents/codex/overlays/greenfield.md"
    ;;
  brownfield-adaptive)
    MODE_FILE="$BASE_DIR/agents/codex/overlays/brownfield-adaptive.md"
    ;;
  *)
    echo "Unknown mode: $MODE"
    exit 1
    ;;
esac

cat "$BASE_FILE" "$MODE_FILE" "$STACK_FILE" > "$TARGET_FILE"
echo "Installed $TARGET_FILE"
