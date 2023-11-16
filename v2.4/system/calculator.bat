set num=0
:menu
cls
echo.
echo Current Number: %num%
echo.
call system\printcalcmenu.bat
echo.
set /p menucalc=" : >> "
if %menucalc%==1 goto add

if %menucalc%==2 goto subtract

if %menucalc%==3 goto multiply

if %menucalc%==4 goto divide

if %menucalc%==5 echo 1 > system\v && call main.bat
:add
cls
set /p num2="Enter number to add: "
set /a num=num+num2
cls
echo Added the numbers!
ping localhost -n 5 > nul
goto menu
:subtract
cls
set /p num2="Enter number to subtract: "
set /a num=num-num2
cls
echo Succesfully subtracted!
ping localhost -n 5 > nul
goto menu
:multiply
cls
set /p num2="Enter number to multiply by: "
set /a num=num*num2
cls
echo Multiplied the numbers!
ping localhost -n 5 > nul
goto menu
:divide
cls
set /p num2="Enter number to divide by: "
if %num2%==0 call system\0divgsod.bat
set /a num=num/num2
cls
echo Divided the numbers!
ping localhost -n 5 > nul
goto menu