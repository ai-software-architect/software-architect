# Codex Integration

This directory contains the Codex-specific adapter for the Software Architect repository.

The goal is to let users install durable architectural instructions into Codex once, either globally or per repository.

## Official Codex Mechanisms Used Here

- global guidance in `~/.codex/AGENTS.md`
- project guidance via repository `AGENTS.md` or `AGENTS.override.md`
- global skills in `$HOME/.agents/skills`
- project skills in `.agents/skills`

## Recommended Modes

### Global

Use this when the user wants Software Architect to influence Codex in every repository on the machine.

Installer:

`install/codex/install-global.sh`

### Project-local and hidden from git

Use this when the user wants Software Architect only for one repository and does not want the setup committed.

Installer:

`install/codex/install-project.sh`

This installer uses:

- `AGENTS.override.md`
- `.agents/skills/`
- `.git/info/exclude`

That keeps the setup local to the machine and out of version control by default.
