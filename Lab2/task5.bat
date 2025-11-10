@ECHO OFF
REM task5.bat - Поиск минимального и максимального числа (конец ввода: -)
SETLOCAL ENABLEDELAYEDEXPANSION

:INPUT
SET /P n=Enter number (or - to finish):
IF "%n%"=="-" GOTO RESULT

SET tmp=%n%
IF "%tmp:~0,1%"=="-" SET tmp=%tmp:~1%
ECHO %tmp%|FINDSTR /R "^[0-9][0-9]*$" >NUL
IF ERRORLEVEL 1 (
  ECHO Invalid input, please enter integer.
  GOTO INPUT
)

IF NOT DEFINED min SET min=%n%
IF NOT DEFINED max SET max=%n%

IF %n% GTR !max! SET max=%n%
IF %n% LSS !min! SET min=%n%
GOTO INPUT

:RESULT
ECHO.
ECHO Minimum: %min%
ECHO Maximum: %max%
ENDLOCAL
PAUSE
