@echo off
setlocal enabledelayedexpansion

set "filename=%~1"

rem 使用where命令查找指定文件
where "%filename%" >nul

if %errorlevel% equ 0 (
    rem 文件存在
    for /f "delims=" %%i in ('where "%filename%"') do (
        echo %%i
    )
) else (
    rem 文件不存在
    echo %filename% not found
)

endlocal