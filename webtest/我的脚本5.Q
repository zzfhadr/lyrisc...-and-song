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
MacroID=9640a854-5bea-4431-acd5-6d1e822083ae
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
Call Plugin.Pic.PrintScreen(133, 133, 444, 222, "C:\temp.bmp")//saveto temp.bmp 
Delay 200
MessageBox "dete"
Delay  200
Call Plugin.ColorEx.PrintScreen(0, 0, 1024, 768) //save to current screen
XY = Plugin.ColorEx.FindPic(0, 0, 1024, 768, "C:\temp.bmp", 1, 0)//find temp.bmp in current screen  

If XY="-1|-1" Then 
	MessageBox XY
End If

Call Plugin.ColorEx.Free()
Call Plugin.File.DeleteFile("C:\temp.bmp")

