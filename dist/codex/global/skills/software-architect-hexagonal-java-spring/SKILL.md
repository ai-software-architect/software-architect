---
name: software-architect-hexagonal-java-spring
description: Use when working on a Java Spring Boot repository and you want architecture planning, layer boundaries, and code generation to follow the Hexagonal Architecture blueprint. Triggers for greenfield project creation and brownfield feature work.
---

# Software Architect Skill

Use this skill when the task is about Java + Spring Boot and the desired architectural direction is Hexagonal Architecture.

## Required Behavior

1. inspect the current repository
2. determine whether the work is greenfield or brownfield
3. plan before coding
4. produce a file plan with layer justification
5. follow the Hexagonal Architecture blueprint
6. only then generate code

## Layer Rules

- domain is framework-free
- application contains input ports, output ports, and interactors
- input adapters call input ports
- output adapters implement output ports
- infrastructure contains configuration and wiring

## Naming Rules

- input ports end with `UseCase`
- use case implementations end with `Interactor`
- output ports end with `Port`

## Brownfield Adaptive Rule

When the existing repository conflicts with the ideal structure, preserve compatibility where necessary but do not worsen architectural boundaries.
