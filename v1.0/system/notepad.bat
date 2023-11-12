cls
title WaveOS: Notepad
echo Enter file!
set /p file=" : >> "
cls
echo.
echo File: %file%
echo.
set /p text=": >> "
echo %text% >> %file%
cls
echo Succesfully saved!
ping localhost -n 5 >nul