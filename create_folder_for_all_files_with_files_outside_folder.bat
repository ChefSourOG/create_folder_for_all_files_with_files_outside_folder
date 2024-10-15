@echo off
setlocal enabledelayedexpansion

rem Set the source folder to the directory of the batch file
set "source_folder=%~dp0"

rem Check if the folder exists
if not exist "%source_folder%" (
    echo The folder "%source_folder%" does not exist.
    pause
    exit /b
)

rem Get the name of this batch file
set "batch_name=%~nx0"

rem Loop through all files in the source folder
for %%f in ("%source_folder%*") do (
    rem Check if the item is a file (not a directory) and not the batch file itself
    if not exist "%%~ff\*" if not "%%~nxf"=="%batch_name%" (
        rem Get the filename without the extension
        set "filename=%%~nf"
        
        rem Create the folder if it doesn't exist
        if not exist "%source_folder%!filename!" (
            mkdir "%source_folder%!filename!"
            echo Created folder: "!filename!"
        )
    )
)

echo Folders have been created for each file, excluding the batch file itself.
pause