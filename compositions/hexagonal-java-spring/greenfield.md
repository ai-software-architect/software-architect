# Greenfield Composition: Hexagonal Java Spring

Use this mode when the target repository is empty or nearly empty.

## Priorities

- create the ideal package structure
- apply blueprint naming exactly
- keep domain pure
- create explicit input and output ports
- place framework-specific wiring in infrastructure
- start with a minimal vertical slice unless the user explicitly asks for broader scope

## Expected Layout

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

## Hard Conventions

- use `adapter/`, not `adapters/`
- use `application/interactor/`, not `application/usecase/`
- use `UseCase` for input port interfaces
- use `Interactor` for use case implementations
- use `Port` for output port interfaces

## Expected Flow

1. inspect repository
2. confirm greenfield context
3. propose file plan
4. justify file placement by layer
5. keep scope minimal unless explicitly expanded by the user
6. generate code only after planning
