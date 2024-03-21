@echo off
:: Program 4
:: Display the arithmetic table of ‘n’ (or 2). This value n should be supplied by the user from the command prompt.
set /p num=Enter a number:

setlocal enabledelayedexpansion

for /l %%i in (1, 1, 10) do (
    set /a result= !num! * %%i
    echo !num! * %%i = !result!
)

endlocal