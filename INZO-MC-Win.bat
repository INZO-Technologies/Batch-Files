@echo off
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
echo Portable Minecraft Launcher by INZO Technologies
echo Please Check Out Our Github At: github.com/INZO-Technologies
echo v1.2.0
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
if not exist "%CD%\GameData\AppData\.minecraft" mkdir "%CD%\GameData\AppData\.minecraft"
if not exist "%CD%\GameData\Minecraft" mkdir "%CD%\GameData\Minecraft"
if not exist "%CD%\GameData\Minecraft\Minecraft.exe" goto download
 
:launch
color 0a
echo Minecraft has been downloaded! It is located in GameData\Minecraft.
echo Launching...
timeout /t 3 /nobreak > NUL
start "Minecraft" "%CD%\GameData\Minecraft\Minecraft.exe" --workDir "%CD%\GameData\AppData\.minecraft"
goto end
 
:download
color 0c
echo Minecraft launcher not found! Downloading...
timeout /t 3 /nobreak > NUL
powershell "Import-Module BitsTransfer; Start-BitsTransfer 'https://launcher.mojang.com/download/Minecraft.exe' '%CD%\GameData\Minecraft\Minecraft.exe'"
powershell "Import-Module BitsTransfer; Start-BitsTransfer 'https://www.dropbox.com/s/ai2a5jeecdurtyf/servers.dat?dl=1' '%CD%\GameData\AppData\.minecraft\servers.dat'"
goto launch
 
:end
