z=0
c=0
asd:
ToolTip, Waiting for a game. (%c% s), 550, 80
Sleep 1
c:=c+0.1
ImageSearch, x, y, 1, 1, 1919, 1079,*12 accep.png
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
    Goto asd
else
{
MouseMove, x, y, 0
Click
z:=z+1
ToolTip, Found a game (%z%), 550, 80
MouseMove, 200, 200, 0
Sleep 17000
ImageSearch, xx, yy, 1, 1, 1919, 1079,*12 selec.png
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
    Goto, asd
else
{
ToolTip, 
Return
}
}
Return