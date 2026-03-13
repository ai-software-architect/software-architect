# Software Architect

Software Architect is the main repository of the AI Software Architect organization.

It provides architecture blueprints, stack-specific rules, LLM usage guides, and examples that help AI coding assistants generate software with consistent architectural boundaries.

The goal is to let tools such as Claude, Codex, and others consult a software architecture specialist before generating code.

---

## What This Repository Contains

This repository is organized around four dimensions:

- architecture blueprints
- technology stacks
- LLM usage guides
- example projects

This allows the project to combine concerns such as:

- Hexagonal Architecture + Java Spring
- Onion Architecture + Java Spring
- MVP + Vue
- future combinations across multiple stacks and models

---

## Repository Structure

```text
software-architect
├─ README.md
├─ docs/
├─ core/
├─ blueprints/
│  ├─ architectures/
│  ├─ stacks/
│  └─ compositions/
├─ llms/
├─ examples/
└─ scripts/
```

---

## Why The Repository Is Structured This Way

A software generation request usually combines multiple dimensions:

1. an architectural style  
2. a technology stack  
3. an LLM-specific usage mode  

For example:

- generate a feature using Hexagonal Architecture
- for a Java Spring project
- using Codex or Claude

Because of that, this repository does not use only architecture or only stack as the top-level structure.

Instead, it separates reusable concerns and allows them to be composed.

---

## Blueprints

The `blueprints` directory contains the reusable architecture and stack definitions.

### Architectures

Examples:

- `hexagonal`
- `onion`
- `clean`
- `mvc`
- `mvp`
- `mvvm`

Each architecture blueprint defines:

- philosophy
- boundaries
- naming conventions
- architecture rules
- templates
- validation rules

### Stacks

Examples:

- `java/common`
- `java/spring`
- `java/spark`
- `vue`
- `node`
- `python`

Each stack definition provides language and framework-specific guidance.

### Compositions

Compositions combine an architecture with a stack.

Example:

- `hexagonal-java-spring`

This is the most direct entry point for an AI assistant that already knows the desired architecture and stack.

---

## LLM Guides

The `llms` directory contains guidance for using this repository with different models.

Structure:

- `llms/common`
- `llms/claude`
- `llms/codex`

### Common Rules

Common rules include:

- plan before coding
- follow architecture boundaries
- prefer contracts over concrete dependencies
- generate tests when architecture rules require them

### Model-Specific Rules

Model-specific guides adapt the common rules to each tool's workflow and prompting style.

---

## Core Components

The `core` directory contains the conceptual engine of the project.

Examples:

- `project-classifier`
- `blueprint-resolver`
- `feature-planner`
- `architecture-reviewer`

These components define how an agent should reason before generating code.

---

## Example Request Flow

A typical request may look like this:

> Create a TODO application in Java Spring using Hexagonal Architecture.

The expected flow is:

1. detect the stack  
2. select the architecture blueprint  
3. resolve the correct composition  
4. apply common and model-specific rules  
5. generate the plan  
6. generate the code  
7. validate architecture constraints  

---

## Initial Focus

The initial focus of the repository is:

- Hexagonal Architecture
- Java + Spring
- Claude and Codex usage guides
- architecture validation with ArchUnit
- examples that can be reused by AI tools

---

## Vision

AI should not generate random architecture.

AI should generate software using explicit architectural blueprints, stack-aware rules, and clear boundaries.

That is the purpose of Software Architect.