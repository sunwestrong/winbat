@echo off
rem  =================Coded By weixin.sun 2016-3-20=============

set TarAPK=""

echo "Set TarAPK var to be blank when install multi apk!"
echo "Set TarAPK var to be apk name or keep only one apk in the folder when install only one special apk!"
echo "Starting..."

rem adb remount

cd %cd%
if %TarAPK%=="" (

for /f "delims=" %%i in ('"dir /a/d/s/b/on *.unaligned"') do (
echo %%~nxi
rem rename %%~nxi %%~ni
adb install  %%~nxi
)

rem ping -n 1 127.0.0.1>nul

for /f "delims=" %%i in ('"dir /a/d/s/b/on *.apk"') do (
echo %%~nxi
set TarAPK=%%~nxi 
rem adb push arm /system/app/%%~ni
rem adb push arm/%%~ni.odex /system/app/%%~ni/arm
rem adb push %%~ni.odex /system/app/%%~ni/arm

adb install -r %%~nxi
rem echo "delay 8 second before new apk install!"
rem ping -n 8 127.0.0.1>nul
))else (adb install -r %TarAPK% )

echo "Finish"

pause

