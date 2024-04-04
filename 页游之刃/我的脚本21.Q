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
MacroID=fc11ca12-a40e-4b3d-a9ce-b0c9fb2a71f5
Description=我的脚本2
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
Hwnd = Plugin.Window.Find("__IrregularWindowClass", "英魂之刃")
	sRect = Plugin.Window.GetClientRect(Hwnd)
	
	If Hwnd <> 0 Then 

	
End If
dim  MyArray
MyArray = Split(sRect, "|")
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
Erase MyArray
MoveTo L + 998, T + 499
//MoveTo L , T  //373 ,184   990,596  1329,638
