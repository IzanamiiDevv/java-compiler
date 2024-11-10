@echo off

:: ENTRY LOG ::
echo [+] Created by IzanamiiDevv
echo [+] Pls Wait...
echo [+] Java tool is Installing!
:: END LOG ::


:: FETCH LOG ::
echo [+] Fetching files
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Izanamii Tool', 'The Program is Installing pls wait', [System.Windows.Forms.ToolTipIcon]::None)}"
curl -O -sS https://izanamiidevv.github.io/java-compiler/jvc-src.zip
curl -O -sS https://izanamiidevv.github.io/java-compiler/jvc.bat
:: END LOG ::


:: UNZIP LOG ::
echo [+] Unziping files
powershell -command "Expand-Archive -Path 'jvc-src.zip' -DestinationPath '.' -Force"
:: END LOG ::


:: OUT LOG ::
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Tool Sucessfully Installed', 'Izanamii', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
:: END LOG


:: BUFFERING LOG ::
echo [+] Deleting Buffer
del jvc-src.zip
del sozo-java-install.bat
:: END LOG ::