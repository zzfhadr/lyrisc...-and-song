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
MacroID=81de5b15-1176-46ab-aada-d01c9823fae1
Description=英雄联盟点一下开排
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
如果英雄联盟窗口是用鼠标点了一下“-”号最小化的，就无法正常运行这个

[Script]

//Hwnd = Plugin.Window.Foreground()
//MsgBox "得到当前最前面的窗口句柄为:" & Hwnd
//spath=Plugin.Window.GetExePath(hwnd)
//MessageBox "路径是：" & spath

Hwnd = Plugin.Window.Find("RCLIENT", "League of Legends")
//说一下这个FIND 这个FIND 第二个说的是FIND标题，但我写的标题根本找不到
//第一个参数是Class1 = Plugin.Window.GetClass(Hwnd)这个
If Hwnd = 0 Then 
	EndScript
End If

Dim xdx
 xdx= Hwnd

Call Plugin.Window.Active(Hwnd)
Delay 50
Hwnd = Plugin.Window.Foreground()
If xdx <> Hwnd Then 
	MsgBox "error"
	EndScript
End If

Delay 30
MoveTo 839, 919
LeftClick 1
RightClick 1


While True
Delay 500
//Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 798, 779)
//if Color <>2498058 Then
//Call Plugin.Window.Active(Hwnd)
//MoveTo 957,844

Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 815, 701)  
If Color = 9276275 or Color = 13222289 Then                                 
Call Plugin.Window.Active(Hwnd)

sRect = Plugin.Window.GetClientRect(Hwnd)
dim  MyArray
MyArray = Split(sRect, "|")
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
Erase MyArray

MoveTo L+815, T+701                                        

Delay  100
LeftClick 1
RightClick 1
'Delay 50
'MoveTo L,T
End If

Hwned = Plugin.Window.Find("RCLIENT", "League of Legends")
If Hwned = 0 Then 
	EndScript
End If
Wend
//Msgbox "后台窗口(坐标：5,5)处的颜色=" & Color
//#302409 未接到窗口中815,701位置处的颜色 接受
//#261d0a  未接到窗口中798,779位置处的颜色 拒绝
//#8d8b73             9276275 接到后 815,701 的颜色
//159,65 0,0
