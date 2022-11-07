#SingleInstance, Force
#InstallKeybdHook
#MaxHotkeysPerInterval 2000


;======================================================
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
;===================================================


;===================================================
;CapsLockFn
#inputlevel,1
$CapsLock::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, CapsLock
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$CapsLock" and A_TimeSinceThisHotkey<10)
        Send {Blind}{CapsLock DownR} 
    return

#inputlevel,0
F24 & i::Up
F24 & k::Down
F24 & j::Left
F24 & l::Right

F24 & w::Up
F24 & s::Down
F24 & a::Left
F24 & d::Right

F24 & q:: BackSpace
F24 & e:: Enter
F24 & u:: BackSpace
F24 & o:: Enter

F24 & n::PgUp
F24 & m::PgDn
F24 & Ctrl::CapsLock

return