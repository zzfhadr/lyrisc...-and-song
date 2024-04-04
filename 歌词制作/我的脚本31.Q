[General]
SyntaxVersion=2
BeginHotkey=19
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=20
StopHotkeyMod=1
RunOnce=1
EnableWindow=
MacroID=6e74dfa0-41c9-4f4d-a2b9-2fa6a5848b93
Description=我的音乐搜索
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
把第一行留空，到下一行，这个脚本目前可能有一些问题。。。

[Script]
Dim clipboard
Dim timeout 
While 1

Delay 300
KeyPress "down",1
Delay 100
KeyPress 35, 1
Delay 100
KeyDownS 16, 1
Delay 50
KeyPressS 36, 1
KeyUpS 16,1

Delay 123
KeyDown "Ctrl", 1
KeyDown "C", 1
KeyUp "C", 1
KeyUp "Ctrl", 1

Delay 100
clipboard = Plugin.Sys.GetCLB()
If clipboard="endl"
  Msgbox clipboard
  EndScript
 End If


KeyDown "alt", 1
Delay 250
KeyPress "tab", 1
Delay 100
KeyUp "alt", 1
Delay 300
cr1 = Plugin.Color.GetPixelColor(983, 20, 1)
If cr1 <> "1FDFFF" Then 
	EndScript
End If

Delay 100
MoveTo 1162, 65  '点X删掉之前的
LeftClick 1
Delay 100
MoveTo 779, 60 '点一下输入框
LeftClick 1
Delay 100

KeyDownS "Ctrl", 1
KeyDownS "v", 1
KeyUpS "v", 1
KeyUpS "Ctrl", 1

Delay 100

KeyPressS "enter", 1
Delay 200

''后面的是根据音乐软件来的，我目前是根据酷我音乐
cr1 = "AAAAA9"
timeout = 0
While cr1 = "AAAAA9"
Delay 500
cr1 = Plugin.Color.GetPixelColor(936 ,536, 1)
timeout = timeout + 1
If timeout > 120 Then 
	EndScript
End If
Wend
Delay 100

cr1 = Plugin.Color.GetPixelColor(935,538, 1)
cr2 = Plugin.Color.GetPixelColor(1103,561, 1)'D0D0CF
If cr1 = "333333" and cr2="D0D0CF" Then 
	Goto NOTF
End If
Delay 100

cr1 = Plugin.Color.GetPixelColor(1234, 238, 1)
If cr1 <> "BBBBBB" Then  ' not three gray points
	Goto NOTF
End If



MoveTo 1228, 231
Rem FOUND
LeftClick 1
Delay 800
MoveTo 850, 840
LeftClick 1
Delay 800
MoveTo 821, 1050
LeftClick 1
Delay 800
Goto CAOBI

Rem NOTF
timeout = 0
//上面是以前写的找没找到到这继续找一下
While timeout < 3
//下面这句在屏幕区域范围内截图保存到(内存)里，以备后面调用。
Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)
//下面这句在屏幕区域范围内按方式0，查找图片,返回左上角第一点颜色位置坐标
XY = Plugin.ColorEx.FindPic(0, 0, 1920, 1080, "D:\按键精灵2014\Image_in_use\new.bmp", 1, 0)
//下面这句用于分割字符串
ZB = InStr(XY, "|")
//下面这句将字符串转换成数值
X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
If X > 0 and Y > 0 Then 
MoveTo X, Y
Goto FOUND
End if
//释放屏幕截图信息时请使用以下命令
Call Plugin.ColorEx.Free() 
timeout = timeout + 1
Wend


Rem CAOBI

Delay 100
KeyDown "alt", 1
Delay 150
KeyPress "tab", 1
Delay 150
KeyUp "alt", 1

Wend
