@ECHO OFF&PUSHD %~DP0 &TITLE �̻�ж��(XXXXX�޸�)
mode con cols=46 lines=25
color 2F
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

:Menu
Cls
@ echo.
@ echo.          �� �� ѡ ��
@ echo.
@ echo.        XXX �� ������1
@ echo.
@ echo.        XXX �� ������2
@ echo.
@ echo.        ж�� �� ������5
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto AAAA
if /i "%xj%"=="2" Goto BBBB
if /i "%xj%"=="5" Goto Uninstall
@ echo.
echo ����    ѡ����Ч...����������...
ping -n 2 127.1>nul
goto menu

:AAAA
:: ��װǰ������ؽ���

@ echo.
echo ����    �����̻���...���Ե�...

ping -n 2 140.1>nul
goto menu

:BBBB
@ echo.
echo ����    �Ѵ�������ͼ��...�뾡��ʹ�ð�!!! 
ping -n 2 140.1>nul
goto menu

:Uninstall
:: ��װǰ������ؽ���
@ echo.
echo ����    ����ж����...���Ե�...
@ echo.
echo ����    ж�����...��ӭ�ٴ�ʹ��!!! 
ping -n 2 140.1>nul
goto menu
