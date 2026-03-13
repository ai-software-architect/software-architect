# Usage Model

This repository is an external architecture knowledge base and build source.

It is meant to help AI coding assistants operate inside other repositories.

## Main Use Cases

### Greenfield

The target repository is empty or nearly empty.

The user wants to create a project from scratch while following the selected architecture and stack.

### Brownfield Adaptive

The target repository already exists.

The user wants to add or modify a feature while improving or preserving important architectural boundaries without performing disruptive rewrites.

## Core Workflow

1. define or detect architecture
2. define or detect stack
3. choose mode
4. resolve composition
5. build or install the agent artifact
6. place the artifact in the target repository
7. let Codex work using those instructions
