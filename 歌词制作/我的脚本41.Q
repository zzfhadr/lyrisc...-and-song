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
MacroID=ef29819c-58a2-4277-ac0c-c4286cf912ca
Description=ÎÒµÄ½Å±¾4
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
x = 983
y = 20


'cr1 = Plugin.Color.GetPixelColor(936 ,536, 1)
'cr2 = Plugin.Color.GetPixelColor(800, 462, 1)
cr1 = Plugin.Color.GetPixelColor(1234, 238, 1)
'cr1 = Plugin.Color.GetPixelColor(x ,y, 1) 
 MessageBox cr1
