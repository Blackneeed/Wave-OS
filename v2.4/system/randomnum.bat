cls
set /p to="Enter how high the number can go: "
cls
call python system\randomnum.py %to%
ping localhost -n 3 >nul