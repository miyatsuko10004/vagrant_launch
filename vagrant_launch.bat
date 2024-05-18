@echo off
REM vagrant launcher

cd /d %~dp0

SET "VIRTUALIZATIONSOFTWARE_DIR=C:\Program Files\Oracle\VirtualBox"

REM Project directory
SET "PROJECT_DIR=F:\manyo_develop"

REM ---------------------------------------------------

echo **** Vagrant launch ****
echo Vagrant launch is executing...

REM Check if the VirtualBox.exe exists
IF NOT EXIST "%VIRTUALIZATIONSOFTWARE_DIR%\VirtualBox.exe" (
    echo Windows cannot find 'VirtualBox.exe'. Make sure you've typed the name correctly.
    exit /b
)

cd /d "%VIRTUALIZATIONSOFTWARE_DIR%"

REM * By default it is written assuming to use VirtualBox.
start VirtualBox.exe

cd /d "%PROJECT_DIR%"

echo vagrant up command execute.
vagrant up

cmd /k cd "%PROJECT_DIR%"
