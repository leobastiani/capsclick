#include <AutoItConstants.au3>
#Include <WinAPI.au3>
#include <WinAPIvkeysConstants.au3>


HotKeySet("{ESC}", "Terminate")

While True
    If _GetCaps() Then
        MouseClick($MOUSE_CLICK_LEFT)
    EndIf
    Sleep(1200)
WEnd


Func _GetCaps()
    Local $ret
    $ret = DllCall("user32.dll","long","GetKeyState","long",$VK_CAPITAL)
    Return $ret[0]
EndFunc



Func Terminate()
    Exit
EndFunc   ;==>Terminate