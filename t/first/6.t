var isth : int
var istm : int
var ifth : int
var iftm : int
var idk : int
var itm : int
var rsm : real
var rsh : real
put "please enter the hour of starting time"
get isth
put "please enter the minute of starting time"
get istm
put "please enter the hour of finishing time"
get ifth
put "please enter the minute of finishing time"
get iftm
put "please enter the distance of trip in km"
get idk
istm := isth * 60 + istm
iftm := ifth * 60 + iftm
itm := iftm - istm
rsm := idk / itm
rsh := idk / itm *60
put "speed is " , rsm , "km/m and " , rsh , "km/h."
put "TYFUMP"
