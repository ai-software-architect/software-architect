# Hexagonal Boundary Rules

## Domain

The `domain` layer may depend only on:

- Java standard library
- other domain classes

The `domain` layer must not depend on:

- application
- adapters
- infrastructure
- Spring
- persistence libraries
- HTTP libraries

## Application

The `application` layer may depend on:

- domain
- application itself

The `application` layer must not depend on:

- adapters
- infrastructure
- framework-specific implementation details

## Adapter In

The `adapter/in` layer may depend on:

- `application/port/in`
- request and response DTOs
- web or transport framework APIs

It must not depend directly on:

- persistence adapters
- infrastructure details

## Adapter Out

The `adapter/out` layer may depend on:

- `application/port/out`
- domain
- required technical libraries

## Infrastructure

The `infrastructure` layer may wire the system together, but it must not become a place for business rules.

## Direction Rule

Typical direction:

`adapter/in -> application/port/in -> application/interactor -> application/port/out -> adapter/out`
