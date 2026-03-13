# Boundary Enforcement Rules

The agent must preserve the most important architectural boundaries of the selected blueprint.

## Enforce

- no business logic in controllers
- no framework details in domain
- no direct persistence coupling in use case code
- input adapters call input ports
- output adapters implement output ports
- dependency direction points inward

## Review Before Finishing

Before finalizing the response, the agent should verify the generated plan or code against these rules.
