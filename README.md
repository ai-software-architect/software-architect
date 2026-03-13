# Hexagonal Architecture Blueprint

This repository contains the Hexagonal Architecture blueprint used by the AI Software Architect ecosystem.

Hexagonal Architecture (also known as Ports and Adapters) separates business logic from external systems and frameworks.

The goal is to help AI agents generate applications with clear boundaries between:

- domain logic
- application use cases
- external adapters
- infrastructure concerns

---

## Architecture Overview

Hexagonal Architecture separates the system into four main areas:

```
domain/

application/
  port/in
  port/out
  interactor

adapter/
  in
  out

infrastructure/
```

---

## Domain Layer

The domain layer contains the core business concepts.

Examples:

- entities
- value objects
- domain services

Rules:

- must not depend on frameworks
- must not depend on adapters
- must not depend on infrastructure

---

## Application Layer

The application layer contains use cases and ports.

```
application/
  port/in
  port/out
  interactor
```

### Input Ports

Input ports define system capabilities.

Example:

```
CreateTaskUseCase
```

### Interactors

Interactors implement input ports and orchestrate domain logic.

Example:

```
CreateTaskInteractor
```

### Output Ports

Output ports define dependencies required by the application.

Example:

```
SaveTaskPort
```

---

## Adapters

Adapters connect the application to external systems.

Examples:

```
adapter/in/web
adapter/out/persistence
```

Typical adapters include:

- HTTP controllers
- database adapters
- messaging integrations

Adapters translate external protocols into application calls.

---

## Infrastructure

Infrastructure contains framework configuration and bootstrapping.

Examples:

- Spring Boot configuration
- dependency wiring
- application entry point

Infrastructure must not contain business logic.

---

## Naming Conventions

Input Port

```
CreateTaskUseCase
```

Implementation

```
CreateTaskInteractor
```

Output Port

```
SaveTaskPort
```

Adapters

```
TaskController
TaskPersistenceAdapter
```

---

## Example Feature

Feature: Create Task

Generated components:

```
domain/task/Task.java

application/port/in/CreateTaskUseCase.java
application/interactor/CreateTaskInteractor.java

application/port/out/SaveTaskPort.java

adapter/in/web/TaskController.java

adapter/out/persistence/TaskPersistenceAdapter.java
```

---

## Architecture Validation

Projects generated using this blueprint can enforce architecture rules using tools such as ArchUnit.

Typical rules:

- domain must not depend on adapters
- application must not depend on infrastructure
- adapters must depend on ports

These checks prevent architectural drift over time.

---

## Using This Blueprint with AI

Example prompt:

Use the hexagonal architecture blueprint from the AI Software Architect organization.

Generate a TODO application using Java and Spring Boot following the architecture rules defined in the repository.

The AI should:

1. load architecture rules
2. apply folder structure
3. follow naming conventions
4. generate ports, interactors, and adapters
5. respect architectural boundaries
