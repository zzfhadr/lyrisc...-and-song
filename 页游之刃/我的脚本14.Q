[General]
SyntaxVersion=2
BeginHotkey=117
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=242d2510-48a7-463f-89f4-80f7515fbff9
Description=×Ô¶¯º°»°
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
While 1

Delay 200

KeyPress "enter", 1
Delay  60
KeyDown "ctrl", 1
Delay 30
KeyPress "v", 1
KeyUp "ctrl",1
Delay 60

KeyPress "enter", 1
Wend
