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
MacroID=59b1faec-65fe-4e2b-884f-bc5253e0a6ae
Description=recheal quest
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
KeyPress "d", 1

KeyDown "d", 1
KeyDown "s", 1
Delay 50
KeyUp "s", 1
KeyUp "d",1

KeyPress "s", 1

KeyDown "s", 1

Delay 50
KeyDown "a",1
KeyUp "a", 1
KeyUp "s", 1

KeyDown "a", 1
Delay 50
KeyDown "m", 1

Delay 1000
KeyUp "a",1
KeyUp  "m",1
