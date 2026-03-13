# Software Architect Project Override

Mode: greenfield
Composition: hexagonal-java-spring

## Required First Response

Before generating code:

1. confirm greenfield context
2. state the selected architecture and stack
3. produce the file plan
4. explain why each file belongs to its layer
5. do not generate code yet

## Structure

- `domain/`
- `application/port/in`
- `application/port/out`
- `application/interactor`
- `adapter/in/web`
- `adapter/out/persistence`
- `infrastructure/config`

## Naming

- input port interface: `CreateTaskUseCase`
- input port implementation: `CreateTaskInteractor`
- output port interface: `SaveTaskPort`
