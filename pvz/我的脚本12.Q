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
MacroID=b819c7a3-c364-422d-a697-d6bccef2e867
Description=无尽自动开1068x600版
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

[Script]



Hwnd = Plugin.Window.Find("MainWindow", "Plants vs. Zombies")


If Hwnd = 0 Then 
Hwnd = Plugin.Window.Find("MainWindow", "植物大战僵尸中文版")
End If

If Hwnd = 0 Then 

	EndScript
End If
Dim xdx
 xdx= Hwnd

//Call Plugin.Window.Top(Hwnd, 0)
//Delay 20
//Call Plugin.Window.Top(Hwnd, 1)
Call Plugin.Window.Restore(Hwnd)
Delay 20
Call Plugin.Window.Active(Hwnd)
Delay 50
Hwnd = Plugin.Window.Foreground()
If xdx <> Hwnd Then 
	MsgBox "error"
	EndScript
End If

Delay 50


While 1
	
Delay  10000


Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 232, 573)


If Color = 1191264 or Color = 64 Then 
	
	sRect = Plugin.Window.GetClientRect(Hwnd)
dim  MyArray
MyArray = Split(sRect, "|")
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
Erase MyArray
//576 173
//808 766
//617 361
//622 493
//678 643


Hwnd = Plugin.Window.Foreground()
If xdx <> Hwnd Then 
	MsgBox "error! please keep window foreground!"
	EndScript
End If



Dim count
count = 0
While count < 8

Delay 50
MoveTo L + 54+ (count*65), T + 188 -33
LeftClick 1
count = count + 1
Wend

Delay 50
MoveTo L + 56, T + 400 -33 //莲叶
LeftClick 1
Delay 50
MoveTo L + 126, T + 570 -33  // 花盆
LeftClick 1
Delay 50
MoveTo L + 258, T + 701 //258  701
Delay 100
LeftClick 1
Delay 30
MoveTo L , T -33
End If

Wend