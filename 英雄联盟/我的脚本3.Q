[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=4a1acb7b-1865-4945-bb2e-564163efa4f7
Description=/mute all
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

KeyDown 13, 1 //enter
KeyUp 13, 1

Delay 300

KeyDown 191, 1  // " /"
KeyUp 191, 1

KeyDown "m", 1
KeyUp "m", 1
KeyDown "u", 1
KeyUp "u", 1
KeyDown "t", 1
KeyUp "t", 1
KeyDown "e", 1
KeyUp "e", 1

KeyDown 32, 1
KeyUp 32, 1

KeyDown "a", 1
KeyUp "a", 1
KeyDown "l", 1
KeyUp "l", 1
KeyDown "l", 1
KeyUp "l", 1

KeyDown 13, 1
KeyUp 13, 1

