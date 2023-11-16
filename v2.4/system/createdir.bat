cls
set /p dir="Folder : >> "
cls
call system\createdir.py %dir%
ping localhost -n 5 >nul