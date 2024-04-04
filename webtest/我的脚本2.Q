[General]
SyntaxVersion=2
BeginHotkey=113
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=9a41cec7-863b-4b5b-9463-fd8301fca59c
Description=复制小说鼠标选
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
可以决定起始选择位置。

[Script]
//https://czbooks.net/n/pmo9c7/phic1a5?chapterNumber=0
//每天都在挨C
counter = -1
While counter < 121

//最开始不需要DELAY


If counter <> - 1  Then 

Delay 223
KeyPress 39, 1//right

//178,811,422,854每章都有的东西
//178,811,421,905 变化的
//158,799,1243,1000
//SIGN = "NOWAY"
//XY = "NOWAY"
While 1
Delay 55

Call Plugin.ColorEx.PrintScreen(0,0,1243,1000) //save to current screen
SIGN = Plugin.ColorEx.FindPic(0, 0, 1243, 1000, "C:\sign.bmp", 1, 0)
XY = Plugin.ColorEx.FindPic(0,0,1243,1000, "C:\temp.bmp", 1, 0)//find temp.bmp in current screen 
//没找到XY值为：-1|-1
//Call Plugin.File.WriteFileEx("D:\Config.txt", "sign:" & SIGN)
//Call Plugin.File.WriteFileEx("D:\Config.txt", "xy:"&XY)
If SIGN <> "-1|-1" and XY = "-1|-1" Then 
Goto BREAK	
End If

Wend
Rem BREAK

End If
	
	
Call Plugin.Pic.PrintScreen(178,811,421,905, "C:\temp.bmp")//saveto temp.bmp 
Call Plugin.Pic.PrintScreen(178,811,422,854, "C:\sign.bmp")//saveto 

Delay 22
MoveTo 174, 811
Delay 60
LeftDown 1
Delay 66
MoveTo 300, 811
Delay 66
LeftUp 1
Delay 67
KeyDownH 16, 1//shift
Delay 67
KeyDownH 17, 1//ctrl
Delay 67
KeyPressH 35, 1//end
Delay 66
KeyUpH "shift", 1
KeyUpH "ctrl", 1

Delay 20

KeyDown "ctrl", 1
Delay 20
KeyPress "c", 1
KeyUp "ctrl", 1

Delay 400

KeyDown "alt", 1
Delay 60
KeyPress "tab", 1
KeyUp "alt", 1

Delay 300
//STV6A  标记	
KeyPress "S", 1
KeyPress "T", 1
KeyPress "V", 1
KeyPress "6", 1
KeyPress "A", 1
KeyPress "enter", 1

Delay 400
KeyDown "ctrl", 1
Delay 20
KeyPress "v", 1
KeyUp "ctrl", 1

Delay 200

KeyPress "enter", 1
	
Delay  300

KeyDown "alt", 1
Delay 60
KeyPress "tab", 1
KeyUp "alt", 1	
	
	counter = counter + 1
	
Wend

Call Plugin.ColorEx.Free()
Call Plugin.File.DeleteFile("C:\temp.bmp")
Call Plugin.File.DeleteFile("C:\sign.bmp")

