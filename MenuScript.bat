@echo off

:menu
cls
echo 	  -:My Menu:-
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
echo a. List all files
echo b. Create directory
echo c. Display today's date and time
echo d. Make abc.txt file read-only
echo e. Exit from menu
set /p choice=Enter your choice : 

if %choice%==a (
    dir
    pause
    goto menu
) else if %choice%==b (
    set /p dirname=Enter directory name to make: 
    mkdir %dirname%
    echo Directory "%dirname%" created.
    pause
    goto menu
) else if %choice%==c (
    echo Today's date and time is: 
    date /t
    time /t
    pause
    goto menu
) else if %choice%==d (
    echo Enter file content then press CTRL+Z to save
    copy con abc.txt
    echo Making abc.txt file read-only... ... ...
    attrib +r abc.txt
    echo File abc.txt is now read-only.
    pause
    goto menu
) else if %choice%==e (
    echo Exiting...
    exit /b
) else (
    echo Invalid choice...Try Again...
    pause
    goto menu
)