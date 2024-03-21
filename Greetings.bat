@echo off
:: Program 4
:: Display the greetings “Good Morning” or “Good Afternoon” or “Good Evening” according to the system time, when the user logs in.

REM Get the current hour
for /f "tokens=1" %%H in ('wmic path Win32_LocalTime get Hour /format:list ^| findstr "="') do set /a "hour=%%H"

REM Determine the appropriate greeting based on the current hour
if %hour% geq 0 if %hour% lss 12 (
    set "greeting=Good Morning"
) else if %hour% geq 12 if %hour% lss 18 (
    set "greeting=Good Afternoon"
) else (
    set "greeting=Good Evening"
)

echo %greeting%!