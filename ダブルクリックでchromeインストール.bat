@echo off

echo ���΂炭���҂���������
echo ��ʂ��ł���u�͂��v�������Ă�������


:BACK

powershell start-process chrome.bat -verb runas

if %errorlevel% == 1 (
    echo �͂��������Ă�������
    goto :BACK
)

exit