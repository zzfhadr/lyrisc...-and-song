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
MacroID=8a0c9a47-2f77-403e-9e74-26bbcdd9173b
Description=复制小说CTRL+A
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
counter=1569474852
While counter < "1569475103"

Delay  300
counter = counter + 1
//武神蚩尤
clipboard="https://boxnovel.baidu.com/boxnovel/content?gid=4356298093&data=%7B%22fromaction%22%3A%22search_jingzhun%22%7D&cid="&counter
Call Plugin.Sys.SetCLB(clipboard)
Delay 20
MoveTo 367, 59
LeftClick 1
Delay 20
KeyDown "ctrl", 1
Delay 20
KeyPress "v", 1
KeyUp "ctrl", 1
Delay 40
KeyPress "enter",1


Delay   1000
/*cr1 = Plugin.Color.GetPixelColor(1141,160, 1)//1141,160 5ea9dd
//DDA95E
Rem NOTF
If cr1 <> "DDA95E" Then 
Delay  500
Goto NOTF
end if
*/
KeyDown "ctrl", 1
Delay 20
KeyPress "a", 1
KeyUp "ctrl", 1

Delay 20

KeyDown "ctrl", 1
Delay 20
KeyPress "c", 1
KeyUp "ctrl", 1

Delay 1000

KeyDown "alt", 1
Delay 60
KeyPress "tab", 1
KeyUp "alt", 1

Delay 300

KeyPress "enter", 1

Delay 400
KeyDown "ctrl", 1
Delay 20
KeyPress "v", 1
KeyUp "ctrl", 1

Delay 200

KeyPress "enter", 1
clipboard = counter//标记方便检查漏章
Call Plugin.Sys.SetCLB(clipboard)
Delay 66
KeyDown "ctrl", 1
Delay 20
KeyPress "v", 1
KeyUp "ctrl", 1
Delay 66
KeyPress "enter", 1


Delay  300

KeyDown "alt", 1
Delay 60
KeyPress "tab", 1
KeyUp "alt", 1
Wend
//https://ncode.syosetu.com/n6006cw/1/
