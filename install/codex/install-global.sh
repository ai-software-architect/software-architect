#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILLS_HOME="${HOME}/.agents/skills"

mkdir -p "$CODEX_HOME"
mkdir -p "$SKILLS_HOME"

cp "$ROOT_DIR/dist/codex/global/AGENTS.md" "$CODEX_HOME/AGENTS.md"

rm -rf "$SKILLS_HOME/software-architect-hexagonal-java-spring"
mkdir -p "$SKILLS_HOME/software-architect-hexagonal-java-spring"
cp "$ROOT_DIR/dist/codex/global/skills/software-architect-hexagonal-java-spring/SKILL.md"   "$SKILLS_HOME/software-architect-hexagonal-java-spring/SKILL.md"

echo "Installed global Codex guidance:"
echo "  $CODEX_HOME/AGENTS.md"
echo "Installed global skill:"
echo "  $SKILLS_HOME/software-architect-hexagonal-java-spring/"
