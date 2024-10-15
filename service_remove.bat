@echo off
chcp 65001 >nul
:: 65001 - UTF-8

set scriptPath=%~dp0
set "path_no_spaces=%scriptPath: =%"
if not "%scriptPath%"=="%path_no_spaces%" (
    echo Путь содержит пробелы. переместите скрипт в директорию без пробелов.
    pause
    exit /b
)

echo Файл должен быть запущен с правами администратора.
echo Нажмите любую клавишу, чтобы продолжить удаление
pause

set SRVCNAME=bypass

net stop "%SRVCNAME%"
sc delete "%SRVCNAME%"

pause
