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

## Naming

- input port interface: `CreateTaskUseCase`
- input port implementation: `CreateTaskInteractor`
- output port interface: `SaveTaskPort`
- input adapter: `TaskController`
- output adapter: `TaskPersistenceAdapter`

## Rules

- keep domain free from Spring and persistence details
- controllers depend on input ports, not on concrete technical details
- persistence adapters implement output ports
- infrastructure owns framework wiring
