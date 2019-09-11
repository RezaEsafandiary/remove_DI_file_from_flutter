@echo off
rem this script wirte by Reza Esfandiary 
rem reza.esfandiary.dev@gmail.com
set ESC=
title auto remove file from project
echo This script will only remove .summery and empty file from your project... or will it?
pause
echo please enter the project location
set /P address=Enter address: 
cd /D %address%\lib
echo %CD%
del /s *.summary 
for /r %%F in (*) do if %%~zF==0 del "%%F"
cd /D %address%\test
echo %CD%
del /s *.summary 
for /r %%F in (*) do if %%~zF==0 del "%%F"  
cls
echo work done.
pause
