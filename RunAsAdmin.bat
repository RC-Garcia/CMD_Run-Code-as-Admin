@echo off
:: Batch file to run commands in Command Prompt as admin

:: Check if running with admin privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" && (
    echo Administrative privileges detected. Continuing...
) || (
    echo You need administrative privileges to run this script.
    echo Right-click on the batch file and select "Run as administrator".
    pause
    exit /B 1
)

:: Run your commands here
echo Running commands with elevated privileges...

:: Example commands
echo Command 1
:: Add your commands here, each on a new line

echo Commands executed successfully.

:: Pause to view output (optional)
pause
