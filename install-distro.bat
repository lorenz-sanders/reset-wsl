@echo off

if "%~1"=="" (set "profile=minimal") else (set "profile=%~1")
if "%~2"=="" (set "distro=debian") else (set "distro=%~2")
if "%~3"=="" (set "location=C:\WSL") else (set "location=%~3")
if "%~4"=="" (set "image=debian.tar") else (set "image=%~4")

echo profile: %profile%
echo distro: %distro%
echo location: %location%
echo image: %image%
echo:

set "step="
call "profile/%profile%.bat"

wsl --unregister %distro% > nul 2>&1

mkdir "%location%" > nul 2>&1
wsl --import %distro% "%location%\%distro%" "%image%" || goto :eof
echo:

echo Copy icon...
copy /y "shortcut.ico" "%location%\%distro%"
echo:

for %%i in (%step%) do (
	if "%%i"=="install/config" (
		wsl -d %distro% "./%%i" || goto :eof
	) else (
		wsl -d %distro% -u root "./%%i" || goto :eof
	)
	wsl -t %distro% > nul 2>&1
	echo:
)
