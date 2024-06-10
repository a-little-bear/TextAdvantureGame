var inum : int
put "please enter a number smaller than 20"
get inum
if inum > 4 then
    put "bigger than 2,3,4"
else
    if inum > 3 then
	put "bigger than 2,3"
    else
	if inum > 2 then
	    put "bigger than 2"
	else
	    put "no bigger"
	end if
    end if
end if
put 2*inum,",",3*inum,",",4*inum
put inum**2,",",inum**3
put "TYFUMP"
