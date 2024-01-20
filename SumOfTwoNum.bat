@echo off
echo Sum of two number:-
echo.

echo Enter the first number:
set /p n1=
echo.

echo Enter the second number:
set /p n2=
echo.

set /a sum = %n1% + %n2%
echo Sum is %sum%
pause