@echo off

if "%~1"=="" (
  echo No file specified. Usage: rm.bat <file>
  exit /b
)

if exist "%~1" (
  del /Q "%~1"
  echo File "%~1" deleted.
) else (
  echo File "%~1" not found.
)