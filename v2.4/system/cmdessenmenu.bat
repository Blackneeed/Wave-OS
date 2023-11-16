:menu
cls
call system\printcmdessenmenu.bat
set /p choice=" : >> "
if %choice%==1 call system\exec\cmdessentials\logout.bat
if %choice%==2 call system\exec\cmdessentials\reboot.bat
if %choice%==3 call system\exec\cmdessentials\scansystemdrive.bat
if %choice%==4 call system\exec\cmdessentials\turnoff.bat
echo 1 > system/v
call main.bat