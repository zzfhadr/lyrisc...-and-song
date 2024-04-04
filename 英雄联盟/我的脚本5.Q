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
MacroID=75fd90b1-34ab-4807-9930-ec58b7231dc7
Description=ÎÒµÄ½Å±¾5
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

Hwnd = Plugin.Window.Find("RCLIENT", "League of Legends")
Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 815, 701)
MsgBox Color