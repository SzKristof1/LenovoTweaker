@echo off
:: prepare
chcp 65001
:: Install apps
echo Alkalmazások telepítése...
winget install 9n4d0msmp0pt --accept-source-agreements --accept-package-agreements
winget install 9n5tdp8vcmhs --accept-source-agreements --accept-package-agreements
winget install 9pmmsr1cgpwg --accept-source-agreements --accept-package-agreements
winget install 9wzdncrfj3p2 --accept-source-agreements --accept-package-agreements
winget install 9wzdncrfj3pt --accept-source-agreements --accept-package-agreements
winget install 9wzdncrfhwkn --accept-source-agreements --accept-package-agreements
:: perform tweaks
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup" /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v VerboseStatus /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
:: prompt user to reboot
echo A szkript végzett a munkával. Ajánlott a gép újraindítása.
