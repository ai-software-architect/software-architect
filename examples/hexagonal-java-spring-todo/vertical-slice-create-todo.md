# Canonical Vertical Slice: CreateTodo

This file defines the minimal canonical example for the first vertical slice in the Hexagonal + Java Spring TODO application.

## Goal

Demonstrate one feature implemented correctly across all layers.

## Feature Scope

Only:

- CreateTodo

Do not automatically add:

- ListTodos
- CompleteTodo
- DeleteTodo
- GetTodo

Those may come later.

## Canonical File Set

```text
src/main/java/com/example/todo/
  domain/model/
    Todo.java
    TodoId.java

  application/port/in/
    CreateTodoUseCase.java

  application/port/out/
    SaveTodoPort.java

  application/interactor/
    CreateTodoInteractor.java
    CreateTodoCommand.java
    TodoView.java

  adapter/in/web/
    TodoController.java
    dto/
      CreateTodoRequest.java
      TodoResponse.java

  adapter/out/persistence/
    TodoPersistenceAdapter.java
    entity/
      TodoEntity.java
    repository/
      SpringDataTodoRepository.java
    mapper/
      TodoPersistenceMapper.java

  infrastructure/config/
    UseCaseConfig.java
```

## Why This Example Exists

This example exists to teach the agent:

- exact package placement
- exact naming
- minimal feature scope
- no silent architecture drift

## Expected Behavior

When asked to create a TODO application in greenfield mode, the agent should begin with a minimal vertical slice close to this example instead of expanding the scope unnecessarily.
