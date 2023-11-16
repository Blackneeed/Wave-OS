goto mgr
:run
title WaveOS: Task Manager: Run process
echo.
cls
echo Enter process name
set /p choice=" : >> "
start %choice%
echo Started process
pause
goto mgr
:kill
title WaveOS: Task Manager: Kill process
cls
echo Enter process name
set /p choice=" : >> "
cls
taskkill /f /im "%choice%"
echo Killed process.
pause
goto mgr
:mgr
title WaveOS: Task Manager
cls
echo.
echo Task Manager
echo.
echo 1 - List processes
echo 2 - Kill process
echo 3 - Run process
echo 4 - Exit
echo.
set /p choice=" : >> "
if %choice%==1 cls && tasklist && pause && goto mgr
if %choice%==2 goto kill
if %choice%==3 goto run
if %choice%==4 echo 1 > system\v && call main.bat