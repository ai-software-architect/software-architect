# Codex Integration

This directory contains the Codex-specific adapter for the Software Architect repository.

The goal is to let users install durable architectural instructions into another repository so Codex can follow the selected blueprint without requiring the user to paste a long prompt every time.

## How Codex Uses This

Codex reads `AGENTS.md` files from the target repository.

For this reason, the main deliverable for Codex in this project is a generated `AGENTS.md` file built from:

- the Codex base agent
- the selected repository mode
- the selected architecture and stack overlays

## Available Modes In The MVP

This MVP currently supports:

- greenfield
- brownfield-adaptive

For the following composition:

- Hexagonal Architecture
- Java + Spring Boot

## What Lives In This Directory

- `base/`
  - shared Codex behavior
  - base `AGENTS.md`
  - base Skill definition

- `overlays/`
  - mode-specific overlays
  - architecture and stack-specific overlays

- `install/`
  - helper scripts for installing generated instructions into a target repository

## Recommended User Flow

### Greenfield

Use this when the target repository is empty or nearly empty.

1. Copy `dist/codex/greenfield-java-spring-hexagonal/AGENTS.md` to `<target-repo>/AGENTS.md`
2. Open Codex in the target repository
3. Ask for the application normally

Example request:

Create a TODO application in Java with Spring Boot.

### Brownfield Adaptive

Use this when the target repository already exists.

1. Copy `dist/codex/brownfield-java-spring-hexagonal/AGENTS.md` to `<target-repo>/AGENTS.md`
2. Open Codex in the target repository
3. Ask for the feature normally

Example request:

Add a Task feature to this project.

## Expected Codex Behavior

When the installed `AGENTS.md` is correct, Codex should:

1. inspect the current repository
2. classify the mode
3. detect the stack
4. apply the selected composition
5. produce a file plan first
6. explain layer placement
7. generate code only after planning

## Why This Exists

The long-term goal is not to make users manually copy prompts for every request.

The goal is to provide a durable architectural layer that can be installed into a target repository and reused across multiple Codex interactions.
