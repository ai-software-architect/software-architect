# Negative Rules

These rules exist to reduce improvisation and architectural drift.

## Forbidden Structure Variants In Greenfield Mode

Do not use:

- `adapters/`
- `application/usecase/`
- `application/service/` for use case implementations
- `controller/` as a top-level architectural layer
- `repository/` as an application layer package

## Forbidden Naming Patterns

Do not use these names for use case implementations in the default blueprint:

- `CreateTodoService`
- `CreateTodoApplicationService`
- `CreateTodoHandler`

Preferred name:

- `CreateTodoInteractor`

## Forbidden Behavioral Patterns

Do not:

- put business logic in controllers
- place Spring annotations in `domain`
- inject JPA repositories directly into interactors
- expose JPA entities outside persistence adapters
- expand the feature scope beyond the explicit user request unless asked

## Scope Rule

When the user asks for one feature, do not silently design five additional features.

For example:

- if the user asks to create a TODO application, first propose a minimal vertical slice
- do not automatically include unrelated extensions unless the user asks for them

## Brownfield Exception

In brownfield adaptive mode, deviations may be tolerated only when:

- they are required by the existing repository structure
- they are clearly explained
- they do not worsen architectural boundaries
