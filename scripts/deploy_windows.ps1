$sourceDir = "C:\Users\Admin\Esupa\esupa_store_pos\build\windows\x64\runner\Release"
$destDir = "E:\Esupa\esupa-store-deployment\esupa_installer\frontend"

# Ensure the destination directory exists and is empty
if (Test-Path $destDir) {
    Remove-Item -Path "$destDir\*" -Recurse -Force
} else {
    New-Item -Path $destDir -ItemType Directory -Force | Out-Null
}

# Copy files from source to destination
Copy-Item -Path "$sourceDir\*" -Destination $destDir -Recurse -Force

Write-Host "Files copied successfully from $sourceDir to $destDir"
