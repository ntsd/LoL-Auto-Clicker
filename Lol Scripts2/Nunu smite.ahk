~t::
GetKeyState, capslockstate, Capslock, T
If capslockstate=D
{
checkt:
GetKeyState, tstate, T
If tstate=D
{
send {shift down}
sleep 10
send {q down}
Goto, checkt
}
else
{
send {shift down}
sleep 10
send {q down}
sleep 10
send {q up}
sleep 100
send {d down}
sleep 10
send {d up}
send {shift up}
return
}
}
else
{
return
}