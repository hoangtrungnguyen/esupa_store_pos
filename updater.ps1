param (
    [string]$appPath,
    [string]$processName
)

# Wait for the main application to close
Write-Host "Waiting for $processName to close..."
while (Get-Process -Name $processName -ErrorAction SilentlyContinue) {
    Start-Sleep -Seconds 1
}

# Path to the frontend directory
$frontendPath = Join-Path -Path $appPath -ChildPath "frontend"

# Path to the update zip, assuming it's in the same directory as the script
$updateZipPath = Join-Path -Path $PSScriptRoot -ChildPath "update.zip"

# Extract the update, overwriting existing files
Write-Host "Updating application..."
Expand-Archive -Path $updateZipPath -DestinationPath $frontendPath -Force

# Relaunch the application
$exePath = Join-Path -Path $frontendPath -ChildPath "esupa_store_pos.exe"
Start-Process -FilePath $exePath

# Clean up the update file and the updater script
Write-Host "Cleaning up..."
Remove-Item -Path $updateZipPath -Force
Remove-Item -Path $MyInvocation.MyCommand.Path -Force