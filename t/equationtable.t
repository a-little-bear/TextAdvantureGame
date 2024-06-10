var rnum : real
var itimes, isans : int
var sans1, sans2 : string

loop
    setscreen ("graphics:1024;800,nobuttonbar")

    put "please enter a number " ..
    get rnum

    put "please enter how many equation do you want " ..
    get itimes

    put "this is the table of ", rnum

    for table : 1 .. itimes
	if table < 10 then
	    if table * rnum < 10 then
		if table * rnum <= 0 then
		    delay (250)
		    put "0", table, " times ", rnum, " = ", table * rnum : 0 : 2
		else
		    delay (250)
		    put "0", table, " times ", rnum, " = 0", table * rnum : 0 : 2
		end if
	    else
		delay (250)
		put "0", table, " times ", rnum, " = ", table * rnum : 0 : 2
	    end if
	else
	    delay (250)
	    put table, " times ", rnum, " = ", table * rnum : 0 : 2
	end if
    end for

    put "how long do you want to wait?(number in second)"
    get isans

    for timenum : 1 .. isans
	put timenum, " second(s), " ..
	delay (1000)
    end for

    put ""

    loop
	put "can we go next?"
	get sans1

	if sans1 (1) = "Y" or sans1 (1) = "y" then
	    if sans1 (2) = "E" or sans1 (2) = "e" then
		if sans1 (3) = "S" or sans1 (3) = "s" then
		    sans1 := "yes"
		end if
	    end if
	end if

	if sans1 (1) = "N" or sans1 (1) = "n" then
	    if sans1 (2) = "O" or sans1 (2) = "o" then
		sans1 := "no"
	    end if
	end if

	if sans1 (1) = "O" or sans1 (1) = "o" then
	    if sans1 (2) = "K" or sans1 (2) = "k" then
		sans1 := "ok"
	    end if
	end if

	exit when sans1 = "yes" or sans1 = "no" or sans1 = "ok"
    end loop

    View.Set ("graphics")

    Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
    Draw.FillOval (450, 225, 150, 150, yellow)
    Draw.FillOval (350, 235, 10, 10, black)
    Draw.FillOval (550, 235, 10, 10, black)
    Draw.Line (350, 180, 550, 180, black)

    loop
	put "do you want to try again?(yes or no)"
	get sans2

	if sans2 (1) = "Y" or sans2 (1) = "y" then
	    if sans2 (2) = "E" or sans2 (2) = "e" then
		if sans2 (3) = "S" or sans2 (3) = "s" then
		    sans2 := "yes"
		end if
	    end if
	end if

	if sans2 (1) = "N" or sans2 (1) = "n" then
	    if sans2 (2) = "O" or sans2 (2) = "o" then
		sans2 := "no"
	    end if
	end if

	if sans2 (1) = "O" or sans2 (1) = "o" then
	    if sans2 (2) = "K" or sans2 (2) = "k" then
		sans2 := "ok"
	    end if
	end if

	exit when sans2 = "yes" or sans2 = "no" or sans2 = "ok"
    end loop

    exit when sans2 = "no"
end loop


