@echo off
REM V Launcher

REM --------------
REM config
REM --------------

cd /d %~dp0

REM Directory with virtualization software (VirtualBox.exe)
REM (* It may be possible to use VMware, but I have not tried it.)
SET "VIRTUALIZATIONSOFTWARE_DIR=C:\Program Files\Oracle\VirtualBox"

REM Project directory
SET "PROJECT_DIR=F:\manyo_develop"

REM ---------------------------------------------------

echo **** V Launcher ****
echo V Launcher is executing...

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
