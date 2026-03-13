# Hexagonal Philosophy

This repository adopts an opinionated but pragmatic interpretation of Hexagonal Architecture.

## Default Interpretation

- `domain` contains business concepts and business rules
- `application` contains input ports, output ports, and use case implementations
- `adapter` contains technical entry and exit implementations
- `infrastructure` contains framework-specific composition and configuration

## Naming Decision

This blueprint uses:

- `UseCase` for input port interfaces
- `Interactor` for input port implementations
- `Port` for output port interfaces

Examples:

- `CreateTaskUseCase`
- `CreateTaskInteractor`
- `SaveTaskPort`

## Why

This default is easier to:

- explain to humans
- teach to AI agents
- validate through architecture tests
- scale across multiple stacks
