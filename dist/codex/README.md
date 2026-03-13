# Codex Distributions

This directory contains generated Codex-ready artifacts.

These files are intended to be installed into Codex globally or into a specific repository.

## Available Distribution Types

### Global

- `global/AGENTS.md`
- `global/skills/software-architect-hexagonal-java-spring/`

These are meant to be installed into:

- `~/.codex/AGENTS.md`
- `$HOME/.agents/skills/software-architect-hexagonal-java-spring/`

### Project-local

- `greenfield-java-spring-hexagonal/AGENTS.override.md`
- `brownfield-java-spring-hexagonal/AGENTS.override.md`

These are meant to be installed into:

- `<repo>/AGENTS.override.md`

with the skill copied into:

- `<repo>/.agents/skills/software-architect-hexagonal-java-spring/`

## Privacy

The recommended project-local installer hides local Codex files via `.git/info/exclude` instead of modifying `.gitignore`.

This avoids committing AI-related setup to the repository unless the user chooses to do so.
