import GUI

procedure fun1
var sname : string
put "please enter your name "..
get sname
put "Welcome! ", sname
put "TYFUMP"
GUI.Refresh
end fun1

procedure fun2
var inum, itotal : int := 0
put "please enter 5 number"
for icounter : 1 .. 5
    get inum
    itotal := itotal + inum
end for
put "the total of these five numbers is ", itotal
put "TYFUMP"
GUI.Refresh
end fun2

procedure fun3
const cc := 1.32643118
var rus , rcn : real
put "please enter the number of money in Canadian dollars "..
get rcn
rus := rcn * cc
put "the number in US dollars is ", rus :0:2
put "TYFUMP"
GUI.Refresh
end fun3

procedure fun4
var sans1, sans2, sans3 : string
var inum : int
sans1 := "hi"
sans2 := "welcome"
sans3 := "nice to meet you"
randint (inum, 1, 3)
case inum of
    label 1 :
	put sans1
    label 2 :
	put sans2
    label 3 :
	put sans3
end case
GUI.Refresh
end fun4

setscreen ("graphics:600;400,nobuttonbar")
var FUN1 : int := GUI.CreateButton(0,0,100,"fun1",fun1)
var FUN2 : int := GUI.CreateButton(100,0,100,"fun2",fun2)
var FUN3 : int := GUI.CreateButton(200,0,100,"fun3",fun3)
var FUN4 : int := GUI.CreateButton(300,0,100,"fun4",fun4)
var quitbtn : int := GUI.CreateButton (4000, 0, maxx, "Stop", GUI.Quit)
loop
    exit when GUI.ProcessEvent
end loop
