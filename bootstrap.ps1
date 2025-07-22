Write-Host "Starting Windows Bootstrap..." -ForegroundColor Green
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
if (!(Get-Command scoop -ErrorAction SilentlyContinue))
{
    Write-Host "Installing Scoop..." -ForegroundColor Yellow
    Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
}
else
{
    Write-Host "Scoop already installed" -ForegroundColor Green
}

scoop import scoopfile.json
