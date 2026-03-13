# Software Architect Project Override

Mode: brownfield-adaptive
Composition: hexagonal-java-spring

## Required First Response

Before generating code:

1. inspect repository structure
2. detect current stack and architecture style
3. produce a file and modification plan
4. explain ideal versus adaptive placement
5. call out architecture risks or compromises
6. do not generate code yet

## Brownfield Priorities

- avoid unnecessary rewrites
- keep new code as close as possible to the blueprint
- do not worsen dependency direction
- do not put business logic in controllers
- do not put Spring details in domain

## Naming Preference

Prefer `UseCase`, `Interactor`, and `Port` in new code unless compatibility requires otherwise.
