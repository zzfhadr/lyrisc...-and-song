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
MacroID=3589af39-0904-44b6-b3a8-b07b65d963e9
Description=我的脚本3
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
Delay 100
Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")
sRect = Plugin.Window.GetClientRect(Hwnd)

MyArray = Split(sRect, "|")
//201，39
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
//480,336
MoveTo 480, 336
Delay 40
LeftClick 1
Delay 700
MoveTo 1381, 810
Delay 40
LeftClick 1
Delay 700
MoveTo 571, 740
Delay 40
LeftClick 1
Delay 1500

LeftClick 1
Delay  1000
MoveTo 969, 720
Delay 40
LeftClick 1
Delay 600

MoveTo 1424, 241
Delay 40
LeftClick 1
Delay 700
MoveTo 1544, 265
Delay 40
LeftClick 1
Delay 700
MoveTo 1066, 84
Delay 40
LeftClick 1
