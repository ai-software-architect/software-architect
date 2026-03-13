# Hexagonal Architecture Blueprint

This blueprint defines the default Hexagonal Architecture used in this repository.

Hexagonal Architecture separates business logic from frameworks and external systems through explicit ports and adapters.

## Main Structure

```text
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

## Design Intent

- `domain` contains business concepts and rules
- `application` contains use cases and ports
- `adapter/in` translates external input into application calls
- `adapter/out` implements required external dependencies
- `infrastructure` contains framework wiring and bootstrapping

## Core Rule

Dependencies must point inward.
