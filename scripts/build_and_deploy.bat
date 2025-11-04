@echo off
echo "Building Flutter Windows app..."
fvm flutter build windows

echo "Deploying to deployment folder..."
powershell.exe -ExecutionPolicy Bypass -File "%~dp0\deploy_windows.ps1"

echo "Build and deployment complete."
pause
