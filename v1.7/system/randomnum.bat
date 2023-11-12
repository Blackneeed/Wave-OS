cls
set /p to="Enter how high the number can go: "
set /a ran=(%random% %%%to%)
cls
echo %ran%
ping localhost -n 3 >nul