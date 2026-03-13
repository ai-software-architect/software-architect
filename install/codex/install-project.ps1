param(
  [Parameter(Mandatory=$true)]
  [ValidateSet("greenfield", "brownfield-adaptive")]
  [string]$Mode,

  [string]$TargetDir = (Get-Location).Path
)

$ErrorActionPreference = "Stop"

$RootDir = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)

switch ($Mode) {
  "greenfield" {
    $SourceFile = Join-Path $RootDir "dist/codex/greenfield-java-spring-hexagonal/AGENTS.override.md"
  }
  "brownfield-adaptive" {
    $SourceFile = Join-Path $RootDir "dist/codex/brownfield-java-spring-hexagonal/AGENTS.override.md"
  }
}

$SkillDir = Join-Path $TargetDir ".agents/skills/software-architect-hexagonal-java-spring"
New-Item -ItemType Directory -Force -Path $SkillDir | Out-Null

Copy-Item -Force $SourceFile (Join-Path $TargetDir "AGENTS.override.md")
Copy-Item -Force `
  (Join-Path $RootDir "dist/codex/global/skills/software-architect-hexagonal-java-spring/SKILL.md") `
  (Join-Path $SkillDir "SKILL.md")

$GitDir = Join-Path $TargetDir ".git"
if (Test-Path $GitDir) {
  $InfoDir = Join-Path $GitDir "info"
  New-Item -ItemType Directory -Force -Path $InfoDir | Out-Null
  $ExcludeFile = Join-Path $InfoDir "exclude"
  if (-not (Test-Path $ExcludeFile)) {
    New-Item -ItemType File -Force -Path $ExcludeFile | Out-Null
  }

  $patterns = @("AGENTS.override.md", ".agents/", ".codex/")
  $existing = Get-Content $ExcludeFile -ErrorAction SilentlyContinue
  foreach ($pattern in $patterns) {
    if ($existing -notcontains $pattern) {
      Add-Content -Path $ExcludeFile -Value $pattern
    }
  }

  Write-Host "Updated local git excludes:"
  Write-Host "  $ExcludeFile"
} else {
  Write-Warning "No .git directory found in $TargetDir. Installed files, but no local excludes were added."
}

Write-Host "Installed project-local Codex guidance:"
Write-Host "  $(Join-Path $TargetDir 'AGENTS.override.md')"
Write-Host "Installed project-local skill:"
Write-Host "  $SkillDir"
