@echo off
color c
shutdown.exe -a
echo "Choose shutdown time:"
echo "1. 2 hours"
echo "2. 4 hours"
echo "3. 6 hours"
echo "4. 8 hours"
color d
set /p choice="Enter the number corresponding to your choice: "

if "%choice%"=="1" (
    set "shutdown_time=7200"
) else if "%choice%"=="2" (
    set "shutdown_time=14400"
) else if "%choice%"=="3" (
    set "shutdown_time=21600"
) else if "%choice%"=="4" (
    set "shutdown_time=28800"
) else (
    echo "Invalid choice. Defaulting to 4 hours."
    set "shutdown_time=14400"
)

echo "Do you want to shutdown in %choice% hour(s)?"
pause

shutdown.exe -s -t %shutdown_time%
