@echo off
echo installuji python...

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [CHYBA] Python neni v systemu nalezen!
    echo instaluji python...
    winget install Python.Python.3.12 --silent --accept-source-agreements --accept-package-agreements
    pause
    exit
)

echo.
echo Hotovo! Vse je pripraveno.
