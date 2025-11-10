@ECHO OFF
REM task9_1.bat - Разбиение файла на три разных
IF "%~1"=="" (
  ECHO Source file not specified
  EXIT /B
)
IF NOT EXIST "%~1" (
  ECHO Source file "%~1" not found
  EXIT /B
)
IF "%~2"=="" IF "%~3"=="" IF "%~4"=="" (
  ECHO Provide three counts: n1 n2 n3
  EXIT /B
)

SETLOCAL ENABLEDELAYEDEXPANSION
DEL 1.txt 2.txt 3.txt >NUL 2>&1

SET /A n1=%2
SET /A n2=%3
SET /A n3=%4
SET /A limit1=%n1%
SET /A limit2=%n1%+%n2%
SET /A count=0

FOR /F "usebackq delims=" %%L IN ("%~1") DO (
  SET /A count+=1
  IF !count! LEQ !limit1! (
    >>1.txt ECHO %%L
  ) ELSE IF !count! LEQ !limit2! (
    >>2.txt ECHO %%L
  ) ELSE (
    >>3.txt ECHO %%L
  )
)

ECHO Done. Processed %count% lines.
ENDLOCAL
PAUSE
