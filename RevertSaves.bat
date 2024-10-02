@echo off
setlocal

REM Define source and destination directories
set destDir="#:\#####\######\###########\####\####\#########"
set backupDir="#:\#####\######\###########\####\####\######### - Backup"

REM Delete all files in the destination directory
echo Deleting files in %destDir%...
del /Q %destDir%\*

REM Copy all files from the backup directory to the destination directory
echo Copying files from %backupDir% to %destDir%...
xcopy /E /I /Y %backupDir%\* %destDir%

echo Operation completed.
endlocal
