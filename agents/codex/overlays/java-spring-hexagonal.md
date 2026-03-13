# Codex Overlay: Hexagonal Java Spring

Use the Hexagonal + Java Spring composition.

## Structure

```text
domain/

application/
  port/in
  port/out
  interactor

adapter/
  in/web
  out/persistence

infrastructure/
  config
```

## Required Conventions

- use `adapter/`, not `adapters/`
- use `application/interactor/`, not `application/usecase/`

## Naming

- input port interface: `CreateTodoUseCase`
- input port implementation: `CreateTodoInteractor`
- output port interface: `SaveTodoPort`
- input adapter: `TodoController`
- output adapter: `TodoPersistenceAdapter`

## Scope Control

For greenfield TODO applications, prefer a minimal first vertical slice unless the user explicitly asks for a broader initial scope.

The canonical first slice is:

- `CreateTodo`

Do not silently expand to multiple use cases unless asked.

## Rules

- keep domain free from Spring and persistence details
- controllers depend on input ports, not on concrete technical details
- persistence adapters implement output ports
- infrastructure owns framework wiring
