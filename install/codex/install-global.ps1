$ErrorActionPreference = "Stop"

$RootDir = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$SkillsHome = Join-Path $HOME ".agents\skills"

New-Item -ItemType Directory -Force -Path $CodexHome | Out-Null
New-Item -ItemType Directory -Force -Path $SkillsHome | Out-Null

Copy-Item -Force `
  (Join-Path $RootDir "dist/codex/global/AGENTS.md") `
  (Join-Path $CodexHome "AGENTS.md")

$SkillTarget = Join-Path $SkillsHome "software-architect-hexagonal-java-spring"
if (Test-Path $SkillTarget) {
  Remove-Item -Recurse -Force $SkillTarget
}
New-Item -ItemType Directory -Force -Path $SkillTarget | Out-Null

Copy-Item -Force `
  (Join-Path $RootDir "dist/codex/global/skills/software-architect-hexagonal-java-spring/SKILL.md") `
  (Join-Path $SkillTarget "SKILL.md")

Write-Host "Installed global Codex guidance:"
Write-Host "  $(Join-Path $CodexHome 'AGENTS.md')"
Write-Host "Installed global skill:"
Write-Host "  $SkillTarget"
