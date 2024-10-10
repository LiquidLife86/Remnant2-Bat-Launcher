@echo off
setlocal

REM Define source and destination directories
set backupDir="C:\Users\Alien\Saved Games\Remnant2\Steam\1938229106"
set destDir="C:\Users\Alien\Saved Games\Remnant2\Steam\1938229106 - Backup"

REM Delete all files in the destination directory
echo Deleting files in %destDir%...
del /Q %destDir%\*

REM Copy all files from the backup directory to the destination directory
echo Copying files from %backupDir% to %destDir%...
xcopy /E /I /Y %backupDir%\* %destDir%

echo Operation completed.
endlocal
