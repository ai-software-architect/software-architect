# Contribution Model

This repository is designed to be evolved by the community.

## Source Of Truth

Contributors should primarily evolve:

- `blueprints/architectures`
- `blueprints/stacks`
- `compositions`
- `agents/common`
- `agents/codex`

## Generated Output

Contributors should avoid manually editing `dist/` unless they are intentionally updating generated outputs.

The expected workflow is:

1. change blueprint or composition source
2. run build script
3. verify generated artifacts
4. submit the resulting changes
