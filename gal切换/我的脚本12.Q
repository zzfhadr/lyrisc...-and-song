[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=1
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=7fe3a480-bd81-4ab4-a1b2-1431486ec973
Description=caplock return to game
Enable=1
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
把SUBLIME放第三个，万花镜放第四个就可以用这个了。。。

[Script]
Delay 500
KeyDown 91,1
Delay 50
KeyPress "3",1
KeyUp 91, 1
Delay 50
KeyDown 91, 1
Delay 50
KeyPress "4", 1
KeyUp 91, 1
Delay 20
MoveTo   300, 966
