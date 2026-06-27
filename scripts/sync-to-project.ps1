param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$ProjectPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = (Resolve-Path (Join-Path $ScriptDir "..")).Path

if (-not (Test-Path -LiteralPath $ProjectPath)) {
    throw "Project path does not exist: $ProjectPath"
}

if (-not (Test-Path -LiteralPath $ProjectPath -PathType Container)) {
    throw "Project path is not a directory: $ProjectPath"
}

$ProjectDir = (Resolve-Path $ProjectPath).Path

function Copy-OneFile {
    param(
        [Parameter(Mandatory = $true)][string]$SourceFile,
        [Parameter(Mandatory = $true)][string]$TargetFile
    )

    $targetParent = Split-Path -Parent $TargetFile
    New-Item -ItemType Directory -Force -Path $targetParent | Out-Null
    Copy-Item -LiteralPath $SourceFile -Destination $TargetFile -Force
    Write-Output "Synced file: $TargetFile"
}

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
        Write-Output "Synced ${Label}: $targetFile"
    }
}

Copy-OneFile -SourceFile (Join-Path $RootDir "AGENTS.md") -TargetFile (Join-Path $ProjectDir "AGENTS.md")
$CodexAgentsDir = Join-Path (Join-Path $RootDir ".codex") "agents"
$SkillsDir = Join-Path (Join-Path $RootDir ".agents") "skills"
$TargetCodexAgentsDir = Join-Path (Join-Path $ProjectDir ".codex") "agents"
$TargetSkillsDir = Join-Path (Join-Path $ProjectDir ".agents") "skills"

Copy-Tree -SourceDir $CodexAgentsDir -TargetDir $TargetCodexAgentsDir -Label "agent"
Copy-Tree -SourceDir $SkillsDir -TargetDir $TargetSkillsDir -Label "skill"
Copy-Tree -SourceDir (Join-Path $RootDir "workflows") -TargetDir (Join-Path $ProjectDir "workflows") -Label "workflow"
Copy-Tree -SourceDir (Join-Path $RootDir "templates") -TargetDir (Join-Path $ProjectDir "templates") -Label "template"

Write-Output "Project sync complete: $ProjectDir"
