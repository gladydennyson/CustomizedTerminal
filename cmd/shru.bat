@echo off
cls
title Command Prompt - by glady
ver
echo (C) Copyright Microsoft Corp.
echo.


:cmd

set /p "cmd=%cd%>" 
%cmd%
echo.
goto
