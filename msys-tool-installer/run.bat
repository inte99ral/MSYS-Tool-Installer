@ECHO OFF
cd /d "%~dp0"
:wait
if not exist "%CD%\code.ps1" (
  ECHO "NOW LOADING..."
  timeout /t 1 >nul
  goto wait
)
powershell.exe -ExecutionPolicy Bypass -File "%CD%\code.ps1"
