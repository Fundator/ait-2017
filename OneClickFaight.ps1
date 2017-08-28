Write-Host "Downloading ghostly (PAC-MAN clone)"
Invoke-WebRequest -Uri https://github.com/sandsmark/aicompo-tg17/releases/download/1.2/ghostly-win32.zip -OutFile ghostly.zip

Write-Host "Unpacking ghostly"
Expand-Archive -Path ghostly.zip

Write-Host "Downloading sample bot"
git clone -q https://github.com/Fundator/FAIGHTbots.git

#Rename-Item ".\FAIGHTbots" "sample bot"

Write-Host "Starting ghostly"
Start-Process -FilePath "$(".\ghostly\ghostly\ghostly.exe")"

Write-Host "Wait a bit until ghostly is launched"
Start-Sleep -Seconds 3

Write-Host "Start sample bot"

Start-Process -WindowStyle Hidden -FilePath "$env:comspec" -ArgumentList "/c python", "$(".\FAIGHTbots\python_boilerplate_superiority\entrypoint_Superiority.py")"
