
@ECHO OFF


title Folder Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Are you sure u want to Lock the folder(Y/N)
set /p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock folder



Call Button 5 3 a0 "1" 20 3 c0 "2" 35 3 b0 "3" 50 3 d0 "4"  X _Box _hover

set /a i=1

:a
if %i%==5 goto endo
GetInput /M %_Box% /H 70
Title button # %Errorlevel% clicked.
echo.
set pass=%pass%%Errorlevel%
echo %pass%  
set /a i=%i%+1   
goto a
:endo


echo.

if NOT %pass%==1234 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Locker created successfully

goto End
:End

set /p "yz=>" 







