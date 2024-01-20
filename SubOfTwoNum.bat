@echo off
echo Substraction of two number:-
echo.

echo Enter the number 1:
set /p n1=
echo.

echo Enter the number 2:
set /p n2=
echo.

set /a sub = %n1% - %n2%
echo Sub is %sub%
pause