# Greenfield Composition: Hexagonal Java Spring

Use this mode when the target repository is empty or nearly empty.

## Priorities

- create the ideal package structure
- apply blueprint naming exactly
- keep domain pure
- create explicit input and output ports
- place framework-specific wiring in infrastructure

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

## Expected Flow

1. inspect repository
2. confirm greenfield context
3. propose file plan
4. justify file placement by layer
5. generate code only after planning
