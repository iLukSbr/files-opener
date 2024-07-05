@echo off
@chcp 65001 > nul

taskkill /F /IM java.exe
taskkill /F /IM javaw.exe

exit /B