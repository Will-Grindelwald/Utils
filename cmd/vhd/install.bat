"%~dp0instsrv.exe" mountVdisk "%~dp0srvany.exe"
reg add HKLM\SYSTEM\CurrentControlSet\services\mountVdisk\Parameters /v Application /d diskpart /f
reg add HKLM\SYSTEM\CurrentControlSet\services\mountVdisk\Parameters /v AppParameters /d "/s \"%~dp0mount.txt\"" /f
reg add HKLM\SYSTEM\CurrentControlSet\services\mountVdisk\Parameters /v AppDirectory /d "c:\windows\system32" /f

echo select vdisk file="%~dp0X.vhd" > "%~dp0mount.txt"
echo attach vdisk >> "%~dp0mount.txt"
