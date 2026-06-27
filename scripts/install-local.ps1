Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = (Resolve-Path (Join-Path $ScriptDir "..")).Path

function Copy-Tree {
    param(
        [Parameter(Mandatory = $true)][string]$SourceDir,
        [Parameter(Mandatory = $true)][string]$TargetDir,
        [Parameter(Mandatory = $true)][string]$Label
    )

    if (-not (Test-Path -LiteralPath $SourceDir -PathType Container)) {
        throw "Missing source: $SourceDir"
    }

    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null

    $pathSeparators = @([System.IO.Path]::DirectorySeparatorChar, [System.IO.Path]::AltDirectorySeparatorChar)
    $sourceRoot = (Resolve-Path $SourceDir).Path.TrimEnd($pathSeparators)

    Get-ChildItem -LiteralPath $SourceDir -File -Recurse | Sort-Object FullName | ForEach-Object {
        $relativePath = $_.FullName.Substring($sourceRoot.Length).TrimStart($pathSeparators)
        $targetFile = Join-Path $TargetDir $relativePath
        $targetParent = Split-Path -Parent $targetFile

        New-Item -ItemType Directory -Force -Path $targetParent | Out-Null
        Copy-Item -LiteralPath $_.FullName -Destination $targetFile -Force
        Write-Output "Installed ${Label}: $targetFile"
    }
}

$CodexAgentsDir = Join-Path (Join-Path $RootDir ".codex") "agents"
$SkillsDir = Join-Path (Join-Path $RootDir ".agents") "skills"
$TargetCodexAgentsDir = Join-Path (Join-Path $HOME ".codex") "agents"
$TargetSkillsDir = Join-Path (Join-Path $HOME ".agents") "skills"

Copy-Tree -SourceDir $CodexAgentsDir -TargetDir $TargetCodexAgentsDir -Label "agent"
Copy-Tree -SourceDir $SkillsDir -TargetDir $TargetSkillsDir -Label "skill"

Write-Output "Local installation complete."
