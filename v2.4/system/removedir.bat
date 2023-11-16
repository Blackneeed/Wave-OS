cls
set /p dir="Folder : >> "
cls
call system\removedir.py %dir%
ping localhost -n 5 >nul