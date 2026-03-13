# Template: Interactor

Use this template when creating a use case implementation in the Hexagonal + Java Spring composition.

## Responsibility

An interactor implements an input port and orchestrates domain behavior through output ports.

## Required Location

Place interactors in:

`application/interactor/`

## Required Naming

Interactor names must end with `Interactor`.

Example:

- `CreateTodoInteractor`

## Example Shape

```java
public final class CreateTodoInteractor implements CreateTodoUseCase {

    private final SaveTodoPort saveTodoPort;

    public CreateTodoInteractor(SaveTodoPort saveTodoPort) {
        this.saveTodoPort = saveTodoPort;
    }

    @Override
    public TodoView execute(CreateTodoCommand command) {
        // orchestrate domain logic here
    }
}
```

## Rules

- do not place interactors in `application/usecase/`
- do not use `Service` naming for use case implementations in this blueprint
- interactors may depend on `domain` and `application/port/out`
- interactors must not depend on controller classes, JPA entities, or Spring Data repositories directly
