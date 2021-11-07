
$location   = Resolve-Path -Path "$PSScriptRoot/..";
$linkPath   = "$Env:USERPROFILE\.vscode\extensions\surface.htmlx";
$pathExists = Test-Path $linkPath;

if (-Not $pathExists) {
    New-Item -Path $linkPath -ItemType SymbolicLink -Value $location;
    Write-Host "Link created";
}