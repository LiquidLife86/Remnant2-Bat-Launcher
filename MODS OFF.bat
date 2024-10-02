@echo off
REM Move specific files from the source directory to the destination directory

REM Define the source and destination directories
set "source=F:\Games\RemnantII\Remnant2\Binaries\Win64"
set "destination=F:\Games\RemnantII\Mods\Spawn"

REM Define the files to be moved
set "files=dwmapi.dll UE4SS.dll UE4SS.log UE4SS-settings.ini"

REM Check if the source directory exists
if not exist "%source%" (
    echo Source directory "%source%" does not exist.
    exit /b 1
)

REM Check if the destination directory exists
if not exist "%destination%" (
    echo Destination directory "%destination%" does not exist.
    exit /b 1
)

REM Move each file
for %%f in (%files%) do (
    if exist "%source%\%%f" (
        move "%source%\%%f" "%destination%"
        if %errorlevel% equ 0 (
            echo Moved %%f successfully.
        ) else (
            echo An error occurred while moving %%f.
        )
    ) else (
        echo %%f does not exist in the source directory.
    )
)

REM End of script

