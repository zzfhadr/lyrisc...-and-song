[General]
SyntaxVersion=2
BeginHotkey=19
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=20
StopHotkeyMod=0
RunOnce=0
EnableWindow=
MacroID=f3d5d355-be2c-4bdd-977d-868429092e8d
Description=酷狗音译歌词快速
Enable=1
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
在要输入的一行上面，必需保证，ALT+TAB切换是在wordt和 酷狗音乐之间
word的上两行，酷狗音乐的上一行。。。。不知道有什么毛病，WORD的要上两行。
更新了都是上一行即可，并且复制到endl这四个字符时自动停止，也就是说在最后一行
的下一行加上endl这几个字符即可实现自动停止

[Script]
'==========以下是按键精灵录制的内容==========
Dim  clipboard
While true
Delay 100
KeyPress "down",1
Delay 100
KeyPress "end", 1
Delay 100
VBSBegin 
    dim wshshell
    set WshShell = CreateObject("WScript.Shell")
    WshShell.sendkeys "+{HOME}"
VBSEnd
Erase wshshell
Delay 123
KeyDown "Ctrl", 1
KeyDown "C", 1
KeyUp "C", 1
KeyUp "Ctrl", 1
Delay  100

clipboard = Plugin.Sys.GetCLB()
If clipboard="endl"
  Msgbox clipboard
  EndScript
 End If

Delay 168
KeyDown "alt", 1
Delay 100
KeyDown "tab", 1
Delay 100
KeyUp "tab", 1
Delay 100
KeyUp "alt", 1
Delay 200
KeyPress "tab",1
Delay 104
KeyDown "Ctrl", 1
KeyDown "A", 1
KeyUp "A", 1
KeyUp "Ctrl", 1
Delay 180
KeyDown "Ctrl", 1
KeyDown "V", 1
KeyUp "V", 1
KeyUp "Ctrl", 1
Delay 100
KeyDown "alt", 1
Delay 100
KeyDown "tab", 1
Delay 100
KeyUp "tab", 1
Delay 100
KeyUp "alt", 1
Wend
'==========以上是按键精灵录制的内容==========
