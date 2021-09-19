#SingleInstance, Force
#InstallKeybdHook
SendMode Input
#MaxHotkeysPerInterval 2000
global Cap_flag :=  False
SetCapsLockState,AlwaysOff
SetNumLockState,AlwaysOn
;最钟爱代码之音量随心所欲
;=========================================================
~lbutton & enter:: ;鼠标放在任务栏，滚动滚轮实现音量的加减
exitapp  
~WheelUp::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Up}  
Return  
~WheelDown::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Down}  
Return  
;~MButton::  
;if (existclass("ahk_class Shell_TrayWnd")=1)  
;Send,{Volume_Mute}  
;Return  

Existclass(class)  
{  
MouseGetPos,,,win  
WinGet,winid,id,%class%  
if win = %winid%  
Return,1  
Else  
Return,0  
}
;=========================================

;  *** CapsLock + XX
#if GetKeyState("CapsLock", "P")


;选中
h & w:: Send +{up}
h & a:: Send +{left}
h & s:: Send +{down}
h & d:: Send +{right}
;移动
w:: Send {up}
a:: Send {left}
s:: Send {down}
d:: Send {right}
;删除 和会车
q:: Send {BackSpace}
e:: Send {Enter}
f:: Send {BackSpace}
r:: send {Delete}
j:: Send {BackSpace}
c:: Send ^c
x:: Send ^x
v:: Send ^v
z:: Send ^z

space::
If (Cap_flag)
{
    SetCapsLockState , AlwaysOff
    Cap_flag := !Cap_flag
    Return
}
Else
{
    SetCapsLockState  , AlwaysOn
    Cap_flag := !Cap_flag
    Return
}

SC002:: Send +{SC002}
SC003:: Send +{SC003}
SC004:: Send +{SC004}
SC005:: Send +{SC005}
SC006:: Send +{SC006}
SC007:: Send +{SC007}
SC008:: Send +{SC008}
SC009:: Send +{SC009}
SC00A:: Send +{SC00A}
SC00B:: Send +{SC00B}
SC00C:: Send +{SC00C}
SC00D:: Send +{SC00D}
SC01A:: Send +{SC}
SC01B:: Send +{SC}
SC027:: Send +{SC}
SC028:: Send +{SC}
SC033:: Send +{SC}
SC034:: Send +{SC}
SC035:: Send +{SC}
SC029:: Send +{SC}

return


