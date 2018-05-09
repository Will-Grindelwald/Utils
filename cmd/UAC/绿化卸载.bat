@ECHO OFF&PUSHD %~DP0 &TITLE 绿化卸载(XXXXX修改)
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
@ echo.          菜 单 选 项
@ echo.
@ echo.        XXX → 请输入1
@ echo.
@ echo.        XXX → 请输入2
@ echo.
@ echo.        卸载 → 请输入5
@ echo.
set /p xj= 输入数字按回车：
if /i "%xj%"=="1" Goto AAAA
if /i "%xj%"=="2" Goto BBBB
if /i "%xj%"=="5" Goto Uninstall
@ echo.
echo 　　    选择无效...请重新输入...
ping -n 2 127.1>nul
goto menu

:AAAA
:: 安装前结束相关进程

@ echo.
echo 　　    正在绿化中...请稍等...

ping -n 2 140.1>nul
goto menu

:BBBB
@ echo.
echo 　　    已创建桌面图标...请尽情使用吧!!! 
ping -n 2 140.1>nul
goto menu

:Uninstall
:: 安装前结束相关进程
@ echo.
echo 　　    正在卸载中...请稍等...
@ echo.
echo 　　    卸载完成...欢迎再次使用!!! 
ping -n 2 140.1>nul
goto menu
