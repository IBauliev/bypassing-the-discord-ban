@echo off
chcp 65001 >nul
:: 65001 - UTF-8

set scriptPath=%~dp0
set "path_no_spaces=%scriptPath: =%"
if not "%scriptPath%"=="%path_no_spaces%" (
    echo Переместите скрипт в директорию без пробелов.
    pause
    exit /b
)

echo Запустите файл с правами администратора.
pause

set SRVCNAME=bypass

net stop "%SRVCNAME%"
sc delete "%SRVCNAME%"

pause
