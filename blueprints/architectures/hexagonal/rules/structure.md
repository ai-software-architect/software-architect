# Canonical Structure Rules

This file defines the canonical package and folder structure for the default Hexagonal blueprint.

## Official Structure

Use this structure exactly unless an adaptive brownfield rule explicitly justifies a deviation.

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

## Canonical Names

The canonical top-level package names are:

- `domain`
- `application`
- `adapter`
- `infrastructure`

## Canonical Application Subpackages

Within `application`, use exactly:

- `port/in`
- `port/out`
- `interactor`

## Canonical Adapter Subpackages

Within `adapter`, use exactly:

- `in/web`
- `out/persistence`

## Canonical Infrastructure Subpackages

Within `infrastructure`, use exactly:

- `config`

## Important

Use `adapter`, not `adapters`.

Use `application/interactor`, not `application/usecase`.

Use this structure as the default for all greenfield work in the Hexagonal + Java Spring composition.
