# Template: REST Controller

Use this template when creating an HTTP input adapter in the Hexagonal + Java Spring composition.

## Responsibility

The controller translates HTTP requests into input port calls and maps results to HTTP responses.

## Required Location

Place controllers in:

`adapter/in/web/`

## Required Naming

Controller names should end with `Controller`.

Example:

- `TodoController`

## Example Shape

```java
@RestController
@RequestMapping("/todos")
public class TodoController {

    private final CreateTodoUseCase createTodoUseCase;

    public TodoController(CreateTodoUseCase createTodoUseCase) {
        this.createTodoUseCase = createTodoUseCase;
    }
}
```

## Rules

- controllers must depend on input port interfaces
- controllers must not contain business rules
- controllers must not access persistence adapters directly
- request and response DTOs belong under `adapter/in/web/dto/`
