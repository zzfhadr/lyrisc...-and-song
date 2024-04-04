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
MacroID=96a12dc1-e342-4055-bfd9-440692548767
Description=玛利Marie 蹲地连招，转身倒立踢
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
KeyDown "s",1
KeyDown "d", 1
KeyPress "k", 1
Delay 50
KeyPress "k",1
KeyUp  "d",1
KeyUp "s", 1
'提前按住反方向就可以转身
'KeyDown "s", 1
'KeyUp "s", 1
Delay 500
KeyPress "a",1
Delay 500
KeyDown "a", 1
KeyDown "w", 1
KeyUp "a", 1
KeyUp "w",1

KeyPress "o", 1
