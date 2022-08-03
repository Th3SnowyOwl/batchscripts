@echo off
if exist setup (exit) else (goto setup)
:setup
wmic logicaldisk get name, description > out.txt
cls
set /p drive="Please type the drive letter with colon ( ex D: ) you would like to setup the script on: "
echo %drive% > driveletter.txt
set /p var=<driveletter.txt
%drive%
curl -o invis.vbs https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/invis.vbs
curl -o invis.vbs https://raw.githubusercontent.com/Th3SnowyOwl/batchscripts/main/nay.bat
echo. > setup
