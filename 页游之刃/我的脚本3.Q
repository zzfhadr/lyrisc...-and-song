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
MacroID=866da7c7-ffae-4ff0-92f6-42992073df06
Description=屏幕找色收集数据
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
GetCursorPos x, y
 cr1 = Plugin.Color.GetPixelColor(x, y, 1)
 //MessageBox cr1
 
 //709 186

Call Plugin.File.WriteFileEx("C:Config.txt", x-709)
Call Plugin.File.WriteFileEx("C:Config.txt", y - 186)
Call Plugin.File.WriteFileEx("C:Config.txt", cr1)
/*
配合下面的使用
XY = Plugin.ColorEx.FindMultiColor(0, 0, 1920, 1080,"1F1305","112|0|38200B,224|0|5E3E13,224|87|59411D,113|87|4E340F,44|87|311C07,44|199|3B2307,155|199|342106,244|199|6A4414,356|199|5E3B0F" , 1, 0)
ZB = InStr(XY, "|")
X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))

*/
