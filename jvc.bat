@echo off
:: COMPILER ::
cd ./jvc-src
java-compile %~1
cd ..

:: REMOVE ITEM ::
if "%~1" == "remove" (
    del jvc.bat
    rmdir /S /Q "jvc-src"
)