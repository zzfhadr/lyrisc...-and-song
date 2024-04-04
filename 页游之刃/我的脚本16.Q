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
MacroID=9c7a25cf-70b5-4f9e-a26b-c2e808d8b265
Description=多账号登录，，，
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
Dim all
all = 5//now is 这个是第几个账号，这个顺序和等级有关，与表中的顺序无关
all = all -1
Delay  200
MoveTo 1743, 1050  // 换输入法，，
LeftClick 1
Delay 500
MoveTo 1775, 915 //输入法
LeftClick 1

While all < 10


Delay 300
MoveTo 0, 1066 // 点徽标键
LeftClick 1
Delay 1000
KeyPress "a", 1
delay 60
KeyPress "m", 1
delay 60
KeyPress "f", 1
delay 60
KeyPress "c", 1
delay 60
KeyPress "space",1
Delay 60
KeyPress "enter", 1
Dim counter
counter = 0
Do While  counter < 20
Delay 50
Hwnd = Plugin.Window.Find("__IrregularWindowClass", "英魂之刃")
counter = counter + 1


Loop

	sRect = Plugin.Window.GetClientRect(Hwnd)
dim  MyArray
MyArray = Split(sRect, "|")
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标

Delay 500
MoveTo L + 998, T + 499
Delay 50
LeftClick 1
Delay  1000


counter = 0 
While counter < 20
Delay 60
KeyDownH  "alt", 1
Delay 40
KeyPressH "n", 1
KeyUpH "alt", 1
counter = counter + 1
Wend
Delay  1000

counter = 0
Do While  counter < 200
Delay 50
Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")
counter = counter + 1
If Hwnd <> 0 Then 

	Exit Do 
End If

Loop

sRect = Plugin.Window.GetClientRect(Hwnd)

MyArray = Split(sRect, "|")
//201，39 是该程序最左点坐标。。可能会发生变化
L = Clng(MyArray(0)): T = Clng(MyArray(1)) : R = Clng(MyArray(2)): B = Clng(MyArray(3)) 
//边框窗口左角X坐标|边框窗口左上角Y坐标|边框窗口右下角X坐标|边框窗口右下角Y坐标
Dim Color1
Do While 1
Color1 = Plugin.BkgndColor.GetPixelColor(Hwnd, 747, 829)
Delay  200
Color = Plugin.BkgndColor.GetPixelColor(Hwnd, 747, 829)
If Color <>Color1 and Color <> 0 and Color1 <> 0 Then  
//页游之刃那个用了动图，所以颜色会发生变化，等到它读取动图完成后，就可以登录了，没读取到的时候是黑色，也就是0？
//等到读取完成后200毫秒之间的颜色会不一样，也就是可以呼出窗口并出循环的时机。，，
Call Plugin.Window.Restore(Hwnd)
Delay 20
Call Plugin.Window.Active(Hwnd)
Delay 50

exit do
End If
Loop
//1192 772

Delay 1000
MoveTo L+ 998 , T+ 730 //点击换区
Delay 30
LeftClick 1
Delay 700
//633 360
MoveTo  L+432,T+321  //点击我的服务器
Delay 30
LeftClick 1
Delay 400
MoveTo L + 825, T + 323 //移动到滚动区域
Delay 900
//1026 362  67
counter = all
If counter < 5 Then 
MoveTo L + 825, T + 323 + (counter * 67)//67=每页的长度/5  就是最上面的Y坐标减最下面的Y坐标
Delay 30
LeftClick 1
Else 
MouseWheel - 10
Delay  400
counter = counter - 5
MoveTo L + 825, T + 323 + (counter * 67)
Delay 30
LeftClick 1
End If


Delay 800
MoveTo L + 747, T + 829//201，39  948，868
Delay 50
LeftClick 1



Delay 10000//等10秒启动程序，后面的是无效的，因为那个活动会过期


MoveTo 1431,234   //每次登录时出现的框，位置可能会发生变化
Delay 40
LeftClick 1
Delay 600
MoveTo 480, 336
Delay 40
LeftClick 1
Delay 700
MoveTo 1381, 810
Delay 40
LeftClick 1
Delay 700
MoveTo 571, 740
Delay 40
LeftClick 1
Delay 1500

LeftClick 1
Delay  1000
MoveTo 969, 720
Delay 40
LeftClick 1
Delay 600

MoveTo 1424, 241
Delay 40
LeftClick 1
Delay 700
MoveTo 1544, 265
Delay 40
LeftClick 1
Delay 700
MoveTo 1066, 84
Delay 40
LeftClick 1  //一直到这都是无效的活动



Delay  290
MessageBox "pause" //对程序进行暂停，进行操作游戏，操作完成后，用任务管理器关掉游戏，点击PAUSE窗口继续执行脚本
all = all + 1
Wend
