@echo off
rem  =================Coded By weixin.sun 2016-3-20=============

adb connect 192.168.0.160

set TarAPK=""

echo "Set TarAPK var to be blank when install multi apk!"
echo "Set TarAPK var to be apk name or keep only one apk in the folder when install only one special apk!"
echo "Starting..."

cd %cd%
if %TarAPK%=="" (
for /f "delims=" %%i in ('"dir /a/d/s/b/on *.apk"') do (
echo %%~nxi
adb install -r  --abi armeabi-v7a %%~nxi
rem ping -n 8 127.0.0.1>nul
))else (adb install -r --abi armeabi-v7a %TarAPK% )

echo "Finish"
rem ro.product.cpu.abilist
pause

