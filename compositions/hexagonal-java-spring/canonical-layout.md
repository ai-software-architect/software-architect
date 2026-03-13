# Canonical Layout For Hexagonal Java Spring

This file defines the exact canonical layout for the Hexagonal + Java Spring composition.

## Official Layout

```text
src/main/java/com/example/todo/
  domain/
    model/
    exception/

  application/
    port/in/
    port/out/
    interactor/

  adapter/
    in/web/
      dto/
      advice/
    out/persistence/
      entity/
      repository/
      mapper/

  infrastructure/
    config/
```

## Canonical Placement Rules

### Domain

- `domain/model/` for aggregates, entities, value objects, enums
- `domain/exception/` for business exceptions

### Application

- `application/port/in/` for use case interfaces
- `application/port/out/` for output port interfaces
- `application/interactor/` for use case implementations

### Adapter In

- `adapter/in/web/` for controllers
- `adapter/in/web/dto/` for transport DTOs
- `adapter/in/web/advice/` for HTTP exception translation

### Adapter Out

- `adapter/out/persistence/` for persistence adapters
- `adapter/out/persistence/entity/` for JPA entities
- `adapter/out/persistence/repository/` for Spring Data repositories
- `adapter/out/persistence/mapper/` for persistence mappers

### Infrastructure

- `infrastructure/config/` for Spring bean wiring and configuration

## Hard Rule

In greenfield mode, this file is the canonical layout.

If generated output does not match this layout, it should be corrected before code generation.
