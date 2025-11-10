@ECHO OFF
REM task9_2.bat - Суммирование размера файлов
IF "%~1"=="" (
  ECHO Directory not specified
  EXIT /B
)
IF "%~2"=="" (
  ECHO Extension not specified
  EXIT /B
)

SETLOCAL ENABLEDELAYEDEXPANSION
SET /A total=0
FOR /R "%~1" %%F IN (*.%2) DO (
  SET /A total+=%%~zF
)
ECHO Total bytes for *.%2 in "%~1": %total%
ENDLOCAL
PAUSE
