@ECHO OFF
REM task7.bat - Общие имена файлов в двух директориях
IF "%~1"=="" (
  ECHO First directory not specified
  EXIT /B
)
IF "%~2"=="" (
  ECHO Second directory not specified
  EXIT /B
)

FOR %%f IN ("%~1\*") DO (
  IF EXIST "%~2\%%~nxf" ECHO %%~nxf
)
PAUSE
