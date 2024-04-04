[General]
SyntaxVersion=2
BeginHotkey=19
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=35
StopHotkeyMod=8
RunOnce=1
EnableWindow=
MacroID=5919ba7f-77ef-4e92-9ac8-94e715c47683
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
Clipboard = Plugin.Sys.GetCLB() '得到剪切板内容，Clipboard就是那串数字
'这里写你要输入到指定位置的那些代码
'下面是模拟按键输出：
For i = 1 To Len(Clipboard)
    KeyPress 48 + Clng(Mid(Clipboard, i, 1)), 1'mid得到字符串的从第I个开始的多少
    '个字符，在这里也就是一个，48+的意思是，这么说吧，字符0是KEY码是48，Clng是去小
   '数点后，取号数？这一串脚本也就输输剪切板里的QQ号了
Next
