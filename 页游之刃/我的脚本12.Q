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
MacroID=47f4ad00-6d6c-4224-a386-2e7adc30d772
Description=我的脚本1
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

//下面这句在屏幕区域范围内截图保存到(内存)里，以备后面调用。

Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)
//Call Plugin.Pic.PrintScreen(0, 0, 1920, 1080, "C:PIC.jpg")


//下面这句在屏幕区域范围内按方式0，查找多点颜色,返回左上角第一点颜色位置坐标

XY = Plugin.ColorEx.FindMultiColor(0, 0, 1920, 1080, "FFFFFF", "2|0|FFFFFF,-6|1|FFFFFF,-3|1|FFFFFF,-6|3|FFFFFF,-3|3|FFFFFF,0|3|FFFFFF,4|3|FFFFFF,-1|5|FFFFFF,3|5|FFFFFF,-3|6|FFFFFF,-6|7|FFFFFF,1|8|FFFFFF,4|8|FFFFFF,-5|10|FFFFFF,-3|10|FFFFFF,4|10|FFFFFF", 1, 0)

//下面这句用于分割字符串

ZB = InStr(XY, "|")

//下面这句将字符串转换成数值


X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
msgbox "屏幕多点找色功能：找屏幕""我""字位置位：" & X&","&Y

//释放屏幕截图信息时请使用以下命令

Call Plugin.ColorEx.Free()
