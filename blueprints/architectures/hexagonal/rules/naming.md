# Hexagonal Naming Rules

## Input Ports

Input port interfaces must end with `UseCase`.

Examples:

- `CreateTaskUseCase`
- `ListTasksUseCase`

## Input Port Implementations

Use case implementations must end with `Interactor`.

Examples:

- `CreateTaskInteractor`
- `ListTasksInteractor`

## Output Ports

Output port interfaces must end with `Port`.

Examples:

- `SaveTaskPort`
- `LoadTaskPort`

## Input Adapters

Input adapters should reflect their transport role.

Examples:

- `TaskController`
- `TaskGrpcController`

## Output Adapters

Output adapters should reflect the technical mechanism they implement.

Examples:

- `TaskPersistenceAdapter`
- `TaskHttpClientAdapter`

## Domain Names

Domain names should be business-oriented.

Examples:

- `Task`
- `TaskId`
- `TaskTitle`
