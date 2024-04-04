[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=20
StopHotkeyMod=1
RunOnce=1
EnableWindow=
MacroID=db56100d-0b27-4d6c-8255-cb85fa3ba66c
Description=我的音乐搜索_自动备份
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
//下面这句在屏幕区域范围内按方式0，查找图片,返回左上角第一点颜色位置坐标
XY = Plugin.ColorEx.FindPic(0, 0, 1920, 1080, "D:\按键精灵2014\Image_in_use\new.bmp", 1, 0)
//下面这句用于分割字符串
ZB = InStr(XY, "|")
//下面这句将字符串转换成数值
X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
MoveTo X,Y
//释放屏幕截图信息时请使用以下命令
Call Plugin.ColorEx.Free() 