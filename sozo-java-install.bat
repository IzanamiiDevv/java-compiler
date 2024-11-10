@echo off

:: ENTRY LOG ::
echo [+] Created by IzanamiiDevv
echo [+] Pls Wait...
echo [+] Java tool is Installing!
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Izanamii Tool', 'The Program is Installing pls wait', [System.Windows.Forms.ToolTipIcon]::None)}"

:: END LOG ::


:: FETCH LOG ::
echo [+] Fetching files
curl -O -sS https://izanamiidevv.github.io/java-compiler/kopal.zip
:: END LOG ::


:: UNZIP LOG
echo [+] Unziping files
powershell -command "Expand-Archive -Path 'kopal.zip' -DestinationPath '.' -Force"
:: END LOG ::


:: BUFFERING LOG ::
echo [+] Deleting Buffer
del kopal.zip
del sozo-java-install.bat
:: END LOG ::