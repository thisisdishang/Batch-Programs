@echo off
:: Program 3
:: Display the current date in words.

REM Define a PowerShell script to get the current date in words
set "psScript=[System.DateTime]::Now.ToString('dddd, MMMM dd, yyyy')"

REM Execute the PowerShell script to get the current date in words
for /f "usebackq delims=" %%I in (`powershell -command "& {%psScript%}"`) do set "word_date=%%I"

echo Today's date in words is: %word_date%