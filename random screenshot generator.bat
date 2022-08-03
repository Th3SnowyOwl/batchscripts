cd "C:\Program Files (x86)\Microsoft\Edge\Application\"
set lpre=https://prnt.sc/

set /a total=0
:start

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c1=%=ExitCodeAscii%
) else (
set /A c1=%RANDOM% * 10 / 32768 + 1
)

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c2=%=ExitCodeAscii%
) else (
set /A c2=%RANDOM% * 10 / 32768 + 1
)

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c3=%=ExitCodeAscii%
) else (
set /A c3=%RANDOM% * 10 / 32768 + 1
)

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c4=%=ExitCodeAscii%
) else (
set /A c4=%RANDOM% * 10 / 32768 + 1
)

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c5=%=ExitCodeAscii%
) else (
set /A c5=%RANDOM% * 10 / 32768 + 1
)

set /a rbin=%random% * 3 %% 2
if %rbin% EQU 1 (
set /a "ascii = %random% * 26 / 32768 + 97"
cmd /c exit /b %ascii%
set c6=%=ExitCodeAscii%
) else (
set /A c6=%RANDOM% * 10 / 32768 + 1
)

set final=%lpre%%c1%%c2%%c3%%c4%%c5%%c6%
msedge.exe %final%

set /a total+=1
if %total% EQU 30 (exit) else (goto start)