@echo off
chcp 65001
setlocal


set ART_FILE=telegram_denuvo8.txt


set MAIN_SCRIPT=main.py

cd /d %~dp0


if exist %ART_FILE% (
    start "" notepad "%ART_FILE%"
    timeout /t 5 /nobreak >nul
) else (
    echo Ошибка: Файл %ART_FILE% не найден.
    pause
    exit /b 1
)


echo.
echo " /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\ ";
echo "( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )";
echo " > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < ";
echo " /\_/\               __                                         /\_/\ ";
echo "( o.o )         ____/ /__  ____  __  ___   ______  __/|_       ( o.o )";
echo " > ^ <         / __  / _ \/ __ \/ / / / | / / __ \|    /        > ^ < ";
echo " /\_/\        / /_/ /  __/ / / / /_/ /| |/ / /_/ /_ __|         /\_/\ ";
echo "( o.o )       \__,_/\___/_/ /_/\__,_/ |___/\____/ |/           ( o.o )";
echo " > ^ <                                                          > ^ < ";
echo " /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\ ";
echo "( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )";
echo " > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < ";
echo.

if exist %MAIN_SCRIPT% (
    echo Запуск %MAIN_SCRIPT%...
    python %MAIN_SCRIPT%
) else (
    echo Ошибка: Файл %MAIN_SCRIPT% не найден.
    pause
    exit /b 1
)


echo.
echo Выберите действие:
echo 1. Начать сбор монет
echo 2. Создать сессию
set /p choice=>
echo Вы выбрали: %choice%

pause
endlocal
