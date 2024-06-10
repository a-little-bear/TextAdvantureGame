var ibyear : int
var ityear : int
var iage : int
put "please enter your birth year"
get ibyear
put "please enter this year"
get ityear
iage := ityear - ibyear
if iage <= 1 then
   put "you are " , iage , " year old"
else
   put "you are " , iage , " years old"
end if
