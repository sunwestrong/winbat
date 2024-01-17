rem Coded by s00108008
@echo off
cls

if exist tasklist.txt del tasklist.txt 
set ProName=InputPersonalization.exe
rem set ProName=%ProName% tee84.exe  


@echo ===== Code by s00108008/huawei  ===== 
@echo  ===== kill %ProName% Begin ===== 

FOR  %%j IN  (%ProName%)  do (
    tasklist /nh /fi "imagename eq %%j">>tasklist.txt
    

)

SETLOCAL ENABLEDELAYEDEXPANSION
set PID=

for /f "skip=1 tokens=2" %%M in (tasklist.txt) do (set /a PID=%%M
  
  if "!PID:~0,1!" gtr "0" (
  echo %date% %time% kill !PID! 
  rem ntsd -c q -p !PID!
  )
)
taskkill /F /IM  %ProName% /T
@echo  ===== kill %ProName% end ===== 
pause