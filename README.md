# Software Architect

Software Architect is the main repository of the AI Software Architect organization.

It provides architecture blueprints, stack-specific rules, compositions, agent adapters, and generated distributions that help AI coding assistants work inside other repositories.

## Important

This repository is not the target application repository.

It is the source of truth used to generate agent packs and installation artifacts for tools such as Codex.

## MVP Included In This Repository

This MVP includes one complete path:

- Architecture: Hexagonal
- Stack: Java + Spring Boot
- Modes:
  - greenfield
  - brownfield-adaptive
- Agent adapter:
  - Codex

## Main Structure

blueprints/  
compositions/  
agents/  
dist/  
scripts/  
docs/  
examples/  

## How To Think About This Repository

- `blueprints/` contains reusable architecture and stack knowledge
- `compositions/` combines architecture + stack + mode
- `agents/` defines how this knowledge becomes agent behavior
- `dist/` contains generated artifacts ready for use in target repositories
- `scripts/` builds and installs those artifacts

## Quick Start With Codex

This repository is meant to guide Codex inside another repository.

### New Project

1. Create or open the target repository.
2. Copy `dist/codex/greenfield-java-spring-hexagonal/AGENTS.md` into the root of the target repository as `AGENTS.md`.
3. Open Codex in the target repository.
4. Ask Codex normally, for example:

Create a TODO application in Java with Spring Boot.

Codex should inspect the repository, detect that it is a greenfield project, produce a plan first, and only then generate code.

### Existing Project

1. Open the existing target repository.
2. Copy `dist/codex/brownfield-java-spring-hexagonal/AGENTS.md` into the root of the target repository as `AGENTS.md`.
3. Open Codex in the target repository.
4. Ask Codex normally, for example:

Add a Task feature to this project.

Codex should inspect the repository, detect the stack and current structure, propose an adaptive plan, and only then generate code.

## Generated Distributions

The `dist/` directory is intentionally versioned.

It contains generated agent artifacts that users can copy directly into target repositories without having to build this project locally.

## First Goal

Use the generated Codex `AGENTS.md` files from `dist/` to guide Codex inside another repository.
