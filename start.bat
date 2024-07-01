@echo off
@chcp 65001 > nul
setlocal enabledelayedexpansion

set "clPath=C:\Users\lucas\Documents\CL\C%~1\"

set c1=^
	Chekov ^
	HeyLeroLero ^
	JamesTKirk ^
	lucalan ^
	Luxter ^
	Picard ^
	r3v0x ^
	Sulu ^
	Uhura

set c2=^
	AmandaGrayson ^
	BenjaminSisko ^
	ChristopherPike ^
	Data ^
	JamesHolden ^
	JonathanArcher ^
	KathrynJaneway ^
	MichaelBurnham ^
	reLukS ^
	WilliamTRiker

set c3=^
	BeverlyCrusher ^
	CristineChapel ^
	DeannaTroi ^
	GeordiLaForge ^
	JadziaDax ^
	KiraNerys ^
	LeonardMcCoy ^
	MilesOBrien ^
	WesleyCrusher ^
	Worf ^
	
set c4=^
	Chakotay ^
	JakeSisko ^
	JulianBashir ^
	Odo ^
	TomParis ^
	Tuvok
	
for %%s in (!c%~1!) do (
	set 
    call :startCL %%s
    timeout /t 3 /NOBREAK > nul
)

exit /B

:startCL
	cd "!clPath!%1"
	start /B javaw.exe -jar "CraftLandia.jar"
goto :eof
