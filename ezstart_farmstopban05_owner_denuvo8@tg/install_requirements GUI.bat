@echo off
chcp 65001
setlocal


for /f "delims=" %%I in ('powershell -command "Add-Type -AssemblyName System.Windows.Forms; $dialog = [System.Windows.Forms.OpenFileDialog]::new(); $dialog.ShowDialog() | Out-Null; $dialog.FileName"') do set "FILE_PATH=%%I"

if "%FILE_PATH%" == "" (
    echo файл не выбран. Выход.
    exit /b 1
)

if exist "%FILE_PATH%" (
    echo установка зависимостей из "%FILE_PATH%"...

 
    pip install -r "%FILE_PATH%"

    echo ========================
    echo зависимости успешно установлены из "%FILE_PATH%".
) else (
    echo Файл "%FILE_PATH%" не найден. проверьте путь и попробуйте снова.
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
pause
endlocal
