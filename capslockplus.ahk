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
#inputlevel,2
$CapsLock::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, CapsLock
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$CapsLock" and A_TimeSinceThisHotkey<300)
        Send {Blind}{CapsLock DownR} 
    return

#inputlevel,1
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

;选中
F24 & h & w:: Send +{up}
F24 & h & a:: Send +{left}
F24 & h & s:: Send +{down}
F24 & h & d:: Send +{right}


return
;===================================================
;SpaceFn
#inputlevel,2
$Space::
    SetMouseDelay -1
    Send {Blind}{F23 DownR}
    KeyWait, Space
    Send {Blind}{F23 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$Space" and A_TimeSinceThisHotkey<300)
        Send {Blind}{Space DownR} 
    return

#inputlevel,1

F23 & SC002:: Send +{SC002}
F23 & SC003:: Send +{SC003}
F23 & SC004:: Send +{SC004}
F23 & SC005:: Send +{SC005}
F23 & SC006:: Send +{SC006}
F23 & SC007:: Send +{SC007}
F23 & SC008:: Send +{SC008}
F23 & SC009:: Send +{SC009}
F23 & SC00A:: Send +{SC00A}
F23 & SC00B:: Send +{SC00B}
F23 & SC00C:: Send +{SC00C}
F23 & SC00D:: Send +{SC00D}
F23 & SC01A:: Send +{SC01A}
F23 & SC01B:: Send +{SC01B}
F23 & SC027:: Send +{SC027}  
F23 & SC028:: Send +{SC028}
F23 & SC033:: Send +{SC033}
F23 & SC034:: Send +{SC034}
F23 & SC035:: Send +{SC035}
F23 & SC029:: Send +{SC029}

F23 & Enter::^Enter
F23 & E :: Click
F23 & R :: Click, Right
return