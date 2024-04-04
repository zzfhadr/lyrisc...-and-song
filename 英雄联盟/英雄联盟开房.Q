[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=0
EnableWindow=
MacroID=938cc1d2-2ca0-4427-9f19-c69b69e8c07a
Description=英雄联盟开房刚进游戏有聊天*
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
'953 578  这个是聊天已被限制的确认
'317 118 PLAY
'607 192  'creat costom room
'414 634	'room name
'248 839	'room password
'1433 219  ads

MoveTo 953, 578   '953 578  这个是聊天已被限制的确认
LeftClick 1
Delay 750
MoveTo 1433, 219   '1433 219  ads
LeftClick 1
Delay 750
''''''''''''''''''''''''''''''''
MoveTo 317 ,118   '317 118 PLAY
LeftClick 1
Delay 1000

''''''''''''''''''''''''''''''''
MoveTo 607 ,192
LeftClick 1
Delay 1000

''''''''''''''''''''''''''''''''
MoveTo 414 ,634
LeftClick 1
KeyDown "ctrl", 1
KeyDown "A", 1
KeyUp "A", 1
KeyUp "ctrl", 1

KeyDown "a", 1
KeyUp "a", 1
KeyDown "s", 1
KeyUp "s", 1
KeyDown "d", 1
KeyUp "d", 1
KeyDown "f", 1
KeyUp "f", 1
KeyDown "space", 1
KeyUp "space", 1
Delay 750

''''''''''''''''''''''''''''''''

MoveTo 248 ,839


LeftClick 1
KeyDown "w", 1
KeyUp "w", 1
KeyDown "c", 1
KeyUp "c", 1
KeyDown "y", 1
KeyUp "y", 1
KeyDown "2", 1
KeyUp "2", 1
KeyDown "A", 1
KeyUp   "A", 1
KeyDown "j", 1
KeyUp   "j", 1
KeyDown "1", 1
KeyUp   "1", 1
KeyDown "n", 1
KeyUp   "n", 1
KeyDown "m", 1
KeyUp   "m", 1
KeyDown "d", 1
KeyUp "d", 1
Delay 750


MoveTo 830, 918
LeftClick 1
Delay 2250







'==========以下是按键精灵录制的内容==========
MoveTo 714, 422
Delay 1000 '还是1000好用
LeftClick 1
MoveTo 712, 483
Delay 1000
LeftClick 1
MoveTo 714, 539
Delay 1000
LeftClick 1
MoveTo 723, 609
Delay 1000
LeftClick 1
MoveTo 1358, 375
Delay 1000
LeftClick 1
MoveTo 1342, 427
Delay 1000
LeftClick 1
MoveTo 1332, 478
Delay 1000
LeftClick 1
MoveTo 1323, 548
Delay 1000
LeftClick 1
MoveTo 1327, 610
Delay 1000
LeftClick 1
MoveTo 812, 935
Delay 1000
LeftClick 1
'==========以上是按键精灵录制的内容==========
