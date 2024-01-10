@echo off
rem  =================Coded By weixin.sun 2022-8-16=============
@echo off
set /a count=0
set out=%cd%\out
set srcdir=%cd%\src
set ext=.png
set prefix=pic
echo ¡°%out%¡±
rem if exist %out% del /s/q/f %out%
if exist %out% rd /s/q %out%
md %out%
setlocal enabledelayedexpansion
cd /d %srcdir%
for /f "delims=" %%i in ('"dir /a/d/s/b/on *%ext%"')do (set /a count+=1 
if !count! LSS 10 (copy "%%i" "%out%\%prefix%0!count!%ext%") else (copy "%%i" "%out%\%prefix%!count!%ext%"))

echo "Finish"

pause

