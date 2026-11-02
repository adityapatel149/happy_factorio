$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$Source = Join-Path $Root "pastel-water"
$Dist = Join-Path $Root "dist"

$InfoPath = Join-Path $Source "info.json"
$Info = Get-Content $InfoPath -Raw | ConvertFrom-Json

$Version = $Info.version
$Name = $Info.name

$FolderName = "${Name}_${Version}"
$Stage = Join-Path $Dist $FolderName
$ZipPath = Join-Path $Dist "$FolderName.zip"

if (Test-Path $Stage) {
    Remove-Item $Stage -Recurse -Force
}

if (Test-Path $ZipPath) {
    Remove-Item $ZipPath -Force
}

New-Item -ItemType Directory -Path $Stage -Force | Out-Null

Copy-Item "$Source\*" $Stage -Recurse

Compress-Archive `
    -Path $Stage `
    -DestinationPath $ZipPath

Remove-Item $Stage -Recurse -Force

Write-Host "Created:"
Write-Host "  $ZipPath"