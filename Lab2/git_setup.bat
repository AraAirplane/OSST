@ECHO OFF
ECHO.
ECHO 1 - Set user name and email 
ECHO 2 - Clear config
ECHO.
SET /P choice="Choose option (1-3): "

IF "%choice%"=="1" GOTO SET_CONFIG
IF "%choice%"=="2" GOTO CLEAR_CONFIG

ECHO Invalid choice
PAUSE
EXIT /B

:SET_CONFIG
cls
SET /P name="Enter name: "
SET /P email="Enter email: "
git config --global user.name "%name%"
git config --global user.email "%email%"
ECHO.
ECHO Config saved!
ECHO Name: %name%
ECHO Email: %email%
ECHO.
PAUSE
EXIT /B


:CLEAR_CONFIG
cls
git config --global --unset user.name
git config --global --unset user.email
ECHO.
ECHO Git configuration cleared!
ECHO.
PAUSE
EXIT /B