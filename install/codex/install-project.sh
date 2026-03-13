#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-}"
TARGET_DIR="${2:-$PWD}"
ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

if [[ -z "$MODE" ]]; then
  echo "Usage: ./install/codex/install-project.sh <greenfield|brownfield-adaptive> [target-dir]"
  exit 1
fi

case "$MODE" in
  greenfield)
    SOURCE_FILE="$ROOT_DIR/dist/codex/greenfield-java-spring-hexagonal/AGENTS.override.md"
    ;;
  brownfield-adaptive)
    SOURCE_FILE="$ROOT_DIR/dist/codex/brownfield-java-spring-hexagonal/AGENTS.override.md"
    ;;
  *)
    echo "Unknown mode: $MODE"
    exit 1
    ;;
esac

mkdir -p "$TARGET_DIR/.agents/skills/software-architect-hexagonal-java-spring"
cp "$SOURCE_FILE" "$TARGET_DIR/AGENTS.override.md"
cp "$ROOT_DIR/dist/codex/global/skills/software-architect-hexagonal-java-spring/SKILL.md"   "$TARGET_DIR/.agents/skills/software-architect-hexagonal-java-spring/SKILL.md"

if [[ -d "$TARGET_DIR/.git" ]]; then
  mkdir -p "$TARGET_DIR/.git/info"
  EXCLUDE_FILE="$TARGET_DIR/.git/info/exclude"
  touch "$EXCLUDE_FILE"

  append_exclude() {
    local pattern="$1"
    if ! grep -qxF "$pattern" "$EXCLUDE_FILE"; then
      printf "%s\n" "$pattern" >> "$EXCLUDE_FILE"
    fi
  }

  append_exclude "AGENTS.override.md"
  append_exclude ".agents/"
  append_exclude ".codex/"

  echo "Updated local git excludes:"
  echo "  $EXCLUDE_FILE"
else
  echo "Warning: no .git directory found in $TARGET_DIR"
  echo "Project-local files were installed, but no local excludes were added."
fi

echo "Installed project-local Codex guidance:"
echo "  $TARGET_DIR/AGENTS.override.md"
echo "Installed project-local skill:"
echo "  $TARGET_DIR/.agents/skills/software-architect-hexagonal-java-spring/"
