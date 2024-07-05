@echo off
@chcp 65001 > nul

cd src
powershell.exe -ExecutionPolicy Bypass -File "start.ps1"