@echo off

if "%1"=="" (
   echo "文件名不能为空"
   exit /b 1
)

if not exist %1 (
  echo 创建文件:%1
  > %1 echo.
  exit /b
) else (
  echo 文件 %1 已存在
  exit /b 1  
)