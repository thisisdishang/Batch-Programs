@echo off
:: Program 2
:: Execute a C language program from the batch code.
REM Check if GCC is installed or not installed

where gcc > nul 2>&1

if %errorlevel% equ 0 (
    echo Compiling and running C program...
    gcc demo.c -o demo.exe
    demo.exe
) else (
    echo GCC is not installed
)
