@echo off
cls
title Command Prompt - by glady
ver
echo (C) Copyright Microsoft Corp.
echo.


:cmd


:Loop

Call Button 105 3 a0 "GCC" 105 9 c0 "Button 2" 105 15 b0 "Button 3"  105 21 90 "Button 4"  X _Box _hover
GetInput /M %_Box% /H 70

Title button # %Errorlevel% clicked.
echo.
set /p "cmd=%cd%>" 
%cmd%
echo.

goto Loop


goto cmd


