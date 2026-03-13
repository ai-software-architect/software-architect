# Template: Input Port

Use this template when creating an input port in the Hexagonal + Java Spring composition.

## Responsibility

An input port defines a capability exposed by the application.

It is an interface, not an implementation.

## Required Location

Place input ports in:

`application/port/in/`

## Required Naming

Input port names must end with `UseCase`.

Example:

- `CreateTodoUseCase`

## Example Shape

```java
public interface CreateTodoUseCase {
    TodoView execute(CreateTodoCommand command);
}
```

## Rules

- input ports must not contain business logic
- input ports must not depend on framework classes
- input ports should express application capabilities clearly
