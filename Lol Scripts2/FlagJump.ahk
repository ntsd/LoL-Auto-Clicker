~t::
GetKeyState, capslockstate, Capslock, T
If capslockstate=D
{
send {shift down}
sleep 10
send {e down}
sleep 10
send {e up}
checkt:
GetKeyState, tstate, T
If tstate=U
{
sleep 100
send {q down}
sleep 10
send {q up}
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