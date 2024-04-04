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
MacroID=7f7d71e5-4c7e-4313-8496-71f701616c88
Description=窗口信息获取
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
Hwnd = Plugin.Window.Foreground()
//Hwnd = Plugin.Window.Find("RCLIENT", "League of Legends")
//MsgBox "得到当前最前面的窗口句柄为:" & Hwnd
sText = Plugin.Window.GetTextEx(Hwnd,0)

//MsgBox "得到窗口句柄的信息内容为：:"& sText

sText1 = Plugin.Window.GetText(Hwnd)
//MsgBox "得到窗口句柄的标题为："& sText1
Call Plugin.File.WriteFileEx("D:\Config.txt", "title:"&sText1)


/*sRect = Plugin.Window.GetClientRect(Hwnd)
dim  MyArray
MyArray = Split(sRect, "|")
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
Erase MyArray

MoveTo L + 815, T + 701
Delay 200
*/
Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 815, 701)
Call Plugin.File.WriteFileEx("D:\Config.txt", "color:"&Color)

Class1 = Plugin.Window.GetClass(Hwnd)
Call Plugin.File.WriteFileEx("D:\Config.txt", "classname:"&Class1)
//MsgBox "得到窗口句柄的类名为："& Class1
spath=Plugin.Window.GetExePath(hwnd)
//MessageBox "路径是：" & spath
