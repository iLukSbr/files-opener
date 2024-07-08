@echo off
@chcp 65001 > nul
setlocal enabledelayedexpansion

set "clPath=%USERPROFILE%\Documents\CL\C"

set c1=^
	Chekov ^
	HeyLeroLero ^
	JamesTKirk ^
	lucalan ^
	Luxter ^
	Picard ^
	r3v0x ^
	Sulu ^
	Uhura ^
	SchnTgaiSpock

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
	Tuvok ^
	BElannaTorres ^
	JackCrusher ^
	Soji ^
	Borg

set c5=^
	AgnesJurati ^
	CharlesTucker ^
	ChrisRios ^
	Elnor ^
	Guinan ^
	HoshiSato ^
	MalcolmReed ^
	Phlox ^
	TPol

set c6=^
	ClevelandBooker ^
	HughCulber ^
	LaanNoonienSingh ^
	PaulStamets ^
	SylviaTilly ^
	TravisMayweather

for %%f in (%cd%\copy\*.txt) do (
	for /L %%i in (1,1,6) do (
		for %%s in (!c%%i!) do (
			copy /Y %%f !clPath!%%i\%%s\CraftLandia\1.5\data\.minecraft\mods\macros
		)
	)
	copy /Y %%f %USERPROFILE%\Documents\CL\iLukS\CraftLandia\1.5\data\.minecraft\mods\macros
	copy /Y %%f %USERPROFILE%\Documents\CL\PhilippaGeorgiou\CraftLandia\1.5\data\.minecraft\mods\macros
	copy /Y %%f %USERPROFILE%\Documents\CL\MBenga\CraftLandia\1.5\data\.minecraft\mods\macros
	copy /Y %%f %USERPROFILE%\Documents\CL\iLukSMacrosoft\.macrosoft\1.5.2\.minecraft\mods\macros
)

exit /B
