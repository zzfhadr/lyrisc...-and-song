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
MacroID=ad098640-ad0b-4ae5-8f96-1614269eda2e
Description=ÈõÖÇ×Ô¶¯´îÌÝ
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
//0 48 
Dim x
Dim y
x = 49
y= 50
While x	< 55
KeyPress x, 1
	x = x + 1
	Delay 30
	
	KeyPress "tab", 1
	Delay 20
	
	
	While y < 55
	KeyPress y, 1
	Delay 20
		KeyPress "tab", 1
		Delay 20
		KeyPress "space", 1
		Delay 20
			KeyPress "tab", 1
			Delay 20
				KeyPress "tab", 1
				Delay 20
				KeyPress "tab", 1
				Delay 20
				KeyPress 8, 1
				Delay 20
	y = y+1	
	Wend
	y = 50
	Delay 20
	KeyPress "tab", 3
	Delay 20
	KeyPress 8, 1
	Delay 20
Wend
Delay 20
KeyPress "3", 1
Delay 20
KeyPress "tab", 1
Delay 20
KeyPress "7", 1
Delay 20
KeyPress "tab", 1
Delay 20
KeyPress "space", 1
Delay 20
KeyPress "tab", 2
Delay 20
KeyPress 8, 1
Delay 20
KeyPress "4", 1
Delay 20
KeyPress "tab", 2
Delay 20
KeyPress "space", 1

