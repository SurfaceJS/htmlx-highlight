$linkPath   = "$Env:USERPROFILE\.vscode\extensions\surface.htmlx-highlight";
$pathExists = Test-Path $linkPath;

if ($pathExists) {
    (Get-Item $linkPath).Delete();
    Write-Host "Link removed";
}