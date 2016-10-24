#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~^XButton2::
MouseGetPos, x2, y2
Return

~XButton1::
Send {alt down}
Sleep 10
Send {e down}
Sleep 10
Send {e up}
Send {alt up}
Return

~XButton2::
MouseGetPos, x, y
MouseMove, x2, y2, 0
Sleep 10
Send {e down}
Sleep 10
Send {e up}
MouseMove, x, y, 0
Return
