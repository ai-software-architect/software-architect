# Java Spring Stack Rules

This stack definition explains how the default architectural rules should be applied in Java with Spring Boot.

## Main Decisions

- use Spring Boot only as a framework detail
- keep Spring annotations out of `domain`
- keep controllers in `adapter/in/web`
- keep persistence implementations in `adapter/out/persistence`
- prefer explicit wiring in `infrastructure/config`
- use ArchUnit for architecture validation

## Suggested Structure

```text
src/main/java/com/example/app/
  domain/
  application/
    port/in/
    port/out/
    interactor/
  adapter/
    in/web/
    out/persistence/
  infrastructure/
    config/
```

## Controller Rules

- use `@RestController` only in `adapter/in/web`
- controllers depend on input port interfaces, not concrete interactors
- controllers translate transport payloads into use case input

## Persistence Rules

- JPA entities belong in `adapter/out/persistence`
- persistence adapters implement output ports
- persistence code must not leak into domain
