rem =================Coded By weixin.sun 2023-1-30=============
@echo off
set restFileName=Foldername.txt
if exist "%restFileName%"  ( del "%restFileName%" )
set fFolderName=FolderName
rem mkdir "%fFolderName%"
if exist "%fFolderName%"  ( rd "%fFolderName%" )
for /f "delims=" %%i in ('"dir /ad/s/b/on *.*"') do (
echo %%~pnxi>> Foldername.txt
if not exist  "%fFolderName%\%%~pnxi" ( mkdir  "%fFolderName%\%%~pnxi" )
)
if exist "%restFileName%" ( start "%restFileName%" )
echo "Finish!"
pause>nul

