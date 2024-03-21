@echo off
:: Program 7
:: Your current directory is C:\D1, which contains some batch code which involves another batch file lying in D:\D1 from batch program1 go to path of batch program2,
:: execute it and come back to original path.
cd /d D:\D1
call custom.bat
cd /d C:\D1
