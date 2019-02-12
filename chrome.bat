@echo off

echo インストール中.........

set fil=googlechromestandaloneenterprise.msi


if %USERNAME% == 30215 (
    rem 別プロセスでフォルダーウィンドウを開く
　　reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "1" /f

    rem フォルダオプション　隠しファイルを表示
    reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v hidden /t REG_DWORD /d 1 /f

    taskkill /f /im explorer.exe

    start explorer.exe

    rem このバッチファイルが存在するフォルダを表示
    start explorer.exe %~dp0
)

echo インストールが始まったからもう閉じてもいいよ！!

if %USERNAME% == 30174 (

    C:\>REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\i8042prt\Parameters" /v "LayerDriver JPN" /d "kbd101.dll" /t REG_SZ /f
    C:\>REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\i8042prt\Parameters" /v OverrideKeyboardIdentifier /d "PCAT_101KEY" /t REG_SZ /f
    C:\>REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\i8042prt\Parameters" /v OverrideKeyboardSubtype /d "2" /t REG_DWORD /f

)

rem Google Chrome をインストール 開始
msiexec /i "%~dp0\%fil%" /quiet /norestart


echo インストール完了！

pause