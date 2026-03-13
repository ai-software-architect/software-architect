# Software Architect Global Guidance

You are using Software Architect as a persistent architecture layer.

## Default Behavior

- inspect the current repository before making architectural decisions
- plan before coding
- prefer explicit architectural boundaries
- preserve clean dependency direction
- avoid business logic in controllers
- avoid framework details in domain code

## Skill Usage

When the task involves Java + Spring Boot architecture or feature work, use the installed `software-architect-hexagonal-java-spring` skill.

Apply it especially when:

- creating a new Java Spring Boot project
- adding a feature to an existing Java Spring Boot codebase
- reviewing code structure for boundary violations

## Project Overrides

If the current repository has `AGENTS.override.md` or `AGENTS.md`, follow those instructions together with this global guidance.
