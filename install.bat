@echo off

echo �C���X�g�[����.........

set fil=GoogleChromeStandaloneEnterprise64.msi


if %USERNAME% == 30215 (
    rem �ʃv���Z�X�Ńt�H���_�[�E�B���h�E���J��
�@�@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "1" /f

    rem �t�H���_�I�v�V�����@�B���t�@�C����\��
    reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v hidden /t REG_DWORD /d 1 /f

    taskkill /f /im explorer.exe

    start explorer.exe

    rem ���̃o�b�`�t�@�C�������݂���t�H���_��\��
    start explorer.exe %~dp0
)

echo �C���X�g�[�����n�܂�������������Ă�������I!


rem Google Chrome ���C���X�g�[�� �J�n
msiexec /i "%~dp0\%fil%" /quiet /norestart


echo �C���X�g�[�������I

pause