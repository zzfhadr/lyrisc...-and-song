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
MacroID=f61c1dc5-f8a8-4b11-b012-fa748af2dbd8
Description=自动排队残疾版不如英雄联盟那个
Enable=0
AutoRun=0
[Repeat]
Type=2
Number=1201
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]
不能有遮挡，不能自动关闭要手动关
只能上厕所人不在电脑前的时候用

[Script]
////取色模式（0标准窗口/1透明窗口）
While 1
Delay  999
MoveTo 0,0
//cr1 = Plugin.Color.GetPixelColor(879, 634, 1)
Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)
//Call Plugin.Pic.PrintScreen(0, 0, 1920, 1080, "C:PIC.jpg")


//下面这句在屏幕区域范围内按方式0，查找多点颜色,返回左上角第一点颜色位置坐标
//																									816
//																									615
//2D5B80  816  615  33749D  879  615  2E5C82  941  615  2F5A79  941  631  768289  875  631  336182  816  631  4C8DB9  816  648  6CE3FC  881  648  4C8FBE  942  648  
XY = Plugin.ColorEx.FindMultiColor(0, 0, 1920, 1080, "2D5B80", "63|0|33749D,125|0|2E5C82,125|16|2F5A79,59|16|768289,0|16|336182,0|33|4C8DB9,65|33|6CE3FC,126|33|4C8FBE", 1, 0)
//816
//615
ZB = InStr(XY, "|")
X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
//msgbox "屏幕多点找色功能：找屏幕""我""字位置位：" & X&","&Y

//If X <> "-1" and Y <> "-1" Then 
If X > 500 and Y > 400 Then 
Delay 1000
MoveTo X+59, Y+16
Delay 100
LeftClick 1
Delay 50
MoveTo 0,0
End If
/*
没有用，因为那个不像上面的那个黄框，图片都会缩放
XY = Plugin.ColorEx.FindMultiColor(0, 0, 1920, 1080,"1F1305","112|0|38200B,224|0|5E3E13,224|87|59411D,113|87|4E340F,44|87|311C07,44|199|3B2307,155|199|342106,244|199|6A4414,356|199|5E3B0F" , 1, 0)
ZB = InStr(XY, "|")
X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
If X > 400 and Y > 66 Then 

Delay 1000
EndScript

End If
*/
Call Plugin.ColorEx.Free()
Wend
//得到当前点的颜色，并弹出对话框显示出来
