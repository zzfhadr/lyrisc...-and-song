[General]
SyntaxVersion=2
BeginHotkey=20
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=16a306b0-b5ea-4f04-8ca4-3c738848c414
Description=nico quest
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
KeyPress "s", 1
Delay 50
KeyDown "s", 1
KeyDown "d", 1
Delay 50
KeyUp "s", 1

KeyDown "k", 1
Delay 400
KeyUp "d", 1
Delay 50
keyup"k",1
