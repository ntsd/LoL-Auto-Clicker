ping=110
~1::
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 nocard.png
if ErrorLevel != 0
    Return
x=0
send {w down}
sleep 10
send {w up}
asd:
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 bluecard.png
if ErrorLevel = 2
    MsgBox Something is wrong.
else if ErrorLevel = 1
{
Sleep 10
x+=1
if x < 400
    Goto, asd
else
    Return
}
else
{
Sleep %ping%
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 bluecard.png
if ErrorLevel = 0
{
send {w down}
sleep 10
send {w up}
}
else
    Goto, asd
}
Return

~2::
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 nocard.png
if ErrorLevel != 0
    Return
x=0
send {w down}
sleep 10
send {w up}
asd2:
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 redcard.png
if ErrorLevel = 2
    MsgBox Something is wrong.
else if ErrorLevel = 1
{
Sleep 10
x+=1
if x < 400
    Goto, asd2
else
    Return
}
else
{
Sleep %ping%
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 redcard.png
if ErrorLevel = 0
{
send {w down}
sleep 10
send {w up}
}
else
    Goto, asd2
}
Return

~3::
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 nocard.png
if ErrorLevel != 0
    Return
x=0
send {w down}
sleep 10
send {w up}
asd3:
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 yellowcard.png
if ErrorLevel = 2
    MsgBox Something is wrong.
else if ErrorLevel = 1
{
Sleep 10
x+=1
if x < 400
    Goto, asd3
else
    Return
}
else
{
Sleep %ping%
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 yellowcard.png
if ErrorLevel = 0
{
send {w down}
sleep 10
send {w up}
}
else
    Goto, asd3
}
Return