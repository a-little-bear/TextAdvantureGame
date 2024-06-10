var rnum : real
put "please enter a number " ..
get rnum
put "this is the table of ", rnum
for table : 1 .. 24
    if table < 10 then
	if table * rnum < 10 then
	    if table * rnum <= 0 then
		put "0", table, " times ", rnum, " = ", table * rnum:0:2
	    else
		put "0", table, " times ", rnum, " = 0", table * rnum:0:2
	    end if
	else
	    put "0", table, " times ", rnum, " = ", table * rnum:0:2
	end if
    else
	put table : 2, " times ", rnum, " = ", table * rnum:0:2
    end if
end for
