@echo off
:: Program 3
:: Create an employee table in database and insert records in it. This should be done by calling the SQL script from the batch code.

REM Check if SQL*Plus is installed or not installed

where sqlplus> nul 2>&1

if %errorlevel% equ 0 (
    echo Executing SQL script...
    sqlplus dishang/dishang @script.sql
) else (
    echo SQL*Plus for Oracle is not installed.
)