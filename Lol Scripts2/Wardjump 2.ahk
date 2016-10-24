~t::
GetKeyState, capslockstate, Capslock, T
If capslockstate=D
{
send {shift down}
sleep 10
send {2 down}
sleep 10
send {2 up}
checkt:
GetKeyState, tstate, T
If tstate=U
{
sleep 100
send {w down}
sleep 10
send {w up}
send {shift up}
RETURN
}
else
{
Goto, checkt
}
}
else
{
return
}