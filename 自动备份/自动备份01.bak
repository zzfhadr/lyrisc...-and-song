[General]
SyntaxVersion=2
BeginHotkey=107
BeginHotkeyMod=7
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=f8532d91-ee87-46bc-8177-4c7bf64809b3
Description=关掉那个讨厌的窗口
Enable=1
AutoRun=1
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
Hwnd = Plugin.Window.Find("Afx:00400000:800:00010003:00000010:00000000", 0)
Delay 600
Dim count 
While Hwnd = 0 and count < 50
    Delay  50
	Hwnd = Plugin.Window.Find("Afx:00400000:800:00010003:00000010:00000000", 0)
	count = count+1
Wend

sRect = Plugin.Window.GetClientRect(Hwnd)
dim  MyArray
MyArray = Split(sRect, "|")
//MessageBox sRect
L = Clng(MyArray(0)) : T = Clng(MyArray(1)) : R = Clng(MyArray(2)) : B = Clng(MyArray(3))
Erase MyArray
MoveTo R - 20, T + 20
RightClick 1
LeftClick 1

