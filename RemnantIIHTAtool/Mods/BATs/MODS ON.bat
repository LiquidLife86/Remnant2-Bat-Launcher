@echo off
REM Move all files from the source directory to the destination directory

REM Define the source and destination directories
set source="F:\Games\RemnantII\Mods\Spawn"
set destination="F:\Games\RemnantII\Remnant2\Binaries\Win64"

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

REM Move the files
move "%source%\*" "%destination%"

REM Check if the move operation was successful
if %errorlevel% equ 0 (
    echo Files moved successfully.
) else (
    echo An error occurred while moving the files.
)

REM End of script
