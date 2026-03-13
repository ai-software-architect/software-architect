# Brownfield Adaptive Composition: Hexagonal Java Spring

Use this mode when the target repository already exists.

## Priorities

- inspect the existing package structure
- preserve compatibility where needed
- avoid unnecessary rewrites
- improve architecture incrementally
- keep new code as close as possible to the blueprint

## Non-Negotiable Priorities

- no business logic in controllers
- no Spring details in domain
- no direct persistence leakage into use cases
- make use case contracts explicit when feasible

## Expected Flow

1. inspect repository
2. detect current structure and conventions
3. explain ideal placement versus adaptive placement
4. list files to create or modify
5. generate code only after planning
