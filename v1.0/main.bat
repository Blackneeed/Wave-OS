@echo off
if exist system/v goto menu
:start
title WaveOS: Loading
color FA
cls
call system\logo.bat
echo.
echo Loading!
ping localhost -n 5 > nul
goto menu
:menu
call system\settheme.bat
call system\setupmenu.bat
call system\printmenu.bat
set /p sel=" : >> "
if %sel%==1 call system\info.bat && goto menu
if %sel%==2 call system\notepad.bat && goto menu
if %sel%==3 call system\changetheme.bat && goto menu
if %sel%==4 call system\taskmanager.bat
if %sel%==5 goto start
if %sel%==6 exit