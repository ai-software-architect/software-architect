# Codex Distributions

This directory contains generated Codex-ready artifacts.

These files are intended to be copied into other repositories.

## Why `dist/` Is Versioned

The `dist/` directory is part of the product.

It is intentionally committed so users can copy the generated artifacts directly without having to run local build steps first.

## Available Distributions In The MVP

- `greenfield-java-spring-hexagonal/`
- `brownfield-java-spring-hexagonal/`

Each distribution contains an `AGENTS.md` file ready to be placed at the root of a target repository.

## How To Use

### New Project

Copy:

`dist/codex/greenfield-java-spring-hexagonal/AGENTS.md`

to:

`<target-repo>/AGENTS.md`

Then open Codex in the target repository and ask:

Create a TODO application in Java with Spring Boot.

### Existing Project

Copy:

`dist/codex/brownfield-java-spring-hexagonal/AGENTS.md`

to:

`<target-repo>/AGENTS.md`

Then open Codex in the target repository and ask:

Add a Task feature to this project.

## Rebuilding

If the source blueprints, compositions, or Codex overlays change, regenerate these artifacts using the build scripts in `scripts/`.
