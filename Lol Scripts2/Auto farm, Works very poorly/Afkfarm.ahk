~F6::
asd:
ImageSearch, minionx, miniony, 1, 1, 1919, 1079,*12 minionhp.png
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
    Goto asd
else
{
miniony:=miniony+30
MouseMove, minionx, miniony, 0
Click right
Goto asd
}
Return