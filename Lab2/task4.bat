@ECHO OFF
REM task4.bat - Список файлов по расширению

IF "%~1"=="" (
  ECHO Directory not specified
  EXIT /B
)
IF "%~2"=="" (
  ECHO Extension not specified
  EXIT /B
)

DIR "%~1\*.%2" /B
PAUSE
