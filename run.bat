@echo off

echo ‚µ‚Î‚ç‚­‚¨‘Ò‚¿‚­‚¾‚³‚¢
echo ‰æ–Ê‚ª‚Å‚½‚çu‚Í‚¢v‚ğ‚¨‚µ‚Ä‚­‚¾‚³‚¢


:BACK

powershell start-process chrome.bat -verb runas

if %errorlevel% == 1 (
    echo ‚Í‚¢‚ğ‰Ÿ‚µ‚Ä‚­‚¾‚³‚¢
    goto :BACK
)

exit