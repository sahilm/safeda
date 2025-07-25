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

scoop install git

scoop bucket add main 
scoop bucket add extras
scoop bucket add nonportable

scoop install sudo
sudo scoop install nvidia-display-driver-dch-np
