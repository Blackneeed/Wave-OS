cls
title WaveOS: Pinger
echo.
echo ----------------------------------------------------
echo ------ CTRL+C after that N and enter to stop -------
echo ----------------------------------------------------
set /p IP=Enter IP!: 
set /p PACKETS=Enter how many packets to send!: 
set /p BYTES=Enter with how many bytes!: 
ping -n %PACKETS% -l %BYTES% %IP% | FIND "TTL="
title WaveOS: Pinger: %IP%
IF ERRORLEVEL 1 (echo [OFFLINE] %IP% [OFFLINE])
ping localhost -n 3 >nul