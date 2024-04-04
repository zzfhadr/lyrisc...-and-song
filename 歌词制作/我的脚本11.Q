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
MacroID=6445d814-2db9-4544-9cce-288db7c77e53
Description=ÎÒµÄ½Å±¾1
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
clipboard = Plugin.Sys.GetCLB()
If clipboard="endl"
  Msgbox clipboard
  EndScript
 End If
Call Plugin.File.WriteFileEx("D:\Config.txt", clipboard)
Call Plugin.File.WriteFileEx("D:\Config.txt", "\n")
