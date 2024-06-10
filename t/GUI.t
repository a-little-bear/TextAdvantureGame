import GUI                                                                        %import GUI


procedure timetable                                                                        %procedure timetable
    loop
	var rnum : real := 0
	var itimes, isans : int := 0
	var sans1, sans2 : string := ""

	setscreen ("graphics:1024;800,nobuttonbar")

	put "please enter a number " ..                                                                 %timetable
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

	loop                                                                                          %wait second
	    put "how long do you want to wait?(number in second)"
	    get isans

	    for timenum : 1 .. isans
		put timenum, " second(s), " ..
		delay (1000)
	    end for

	    put ""

	    loop                                                                                       %go next
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

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop

	View.Set ("graphics")                                                                           %thank you

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)

	loop                                                                                            %tey again
	    put "do you want to try again?(yes/ok/no)"
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
    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh
end timetable                                                                              %end procedure


procedure averagemark                                                                      %procedure average mark
    loop
	setscreen ("graphics:1024;800,nobuttonbar")
	var sans2 : string
	var icounter : int := 0
	var rtotal, rmark, raverage : real := 0
	var sans1 : string := ""

	put "please enter the marks, enter -1 to stop and cauculate the average mark"               %average mark

	loop
	    get rmark
	    exit when rmark = -1
	    icounter := icounter + 1
	    rtotal := rtotal + rmark
	end loop

	raverage := rtotal / icounter

	put "the average mark is ", raverage : 2

	loop                                                                                               %go next
	    put "can we go next?"
	    get sans1

	    if sans1 (1) = "Y" or sans1 (1) = "y" then
		if sans1 (2) = "E" or sans1 (2) = "e" then
		    if sans1 (3) = "S" or sans1 (3) = "s" then
			sans1 := "yes"
		    end if
		end if
	    end if

	    if sans1 (1) = "O" or sans1 (1) = "o" then
		if sans1 (2) = "K" or sans1 (2) = "k" then
		    sans1 := "ok"
		end if
	    end if

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop
	%than you
	View.Set ("graphics")

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)

	loop                                                                                                    %again
	    put "do you want to try again?(yes/ok/no)"
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
    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh
end averagemark                                                                                 %end procedure


procedure guessnumber                                                                           %procedure guess number
    loop
	setscreen ("graphics:1024;800,nobuttonbar")

	var ign1, ign2, iguessnum : int

	put "what is the range of number"                                                                   %guess number
	get ign1, ign2

	randint (iguessnum, ign1, ign2)

	var iguess, igtime : int := 0

	loop
	    put "please guess the number " ..
	    get iguess

	    igtime := igtime + 1

	    if iguess < iguessnum then
		put "your guess is smaller than the answer"
	    elsif iguess > iguessnum then
		put "your guess is bigger than the answer"
	    else
		if igtime = 1 then
		    put "you got the answer in ", igtime, " time"
		    exit
		else
		    put "you got the answer in ", igtime, " times"
		    exit
		end if
	    end if
	end loop
	loop                                                                                                                %go next
	    var sans1 : string
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

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop
	%thank you
	View.Set ("graphics")

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)

	loop                                                                                                    %again
	    var sans2 : string
	    put "do you want to try again?(yes/ok/no)"
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

	var sans2 : string

	exit when sans2 = "no"

    end loop

    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh

end guessnumber                                                                             %end procedure







procedure wordlength                                                                        %procedure word length
    loop
	setscreen ("graphics:1024;800,nobuttonbar")
	var sword : string
	var ilong : int
	var sans2 : string

	put "please enter a word"                                                           %word length
	get sword

	ilong := length (sword)

	if ilong = 1 then
	    put "the word is ", ilong, " character long"
	else
	    put "the word is ", ilong, " characters long"
	end if

	var sans1 : string
	loop                                                                                %continue
	    put "do you want to continue?"
	    get sans1

	    if sans1 (1) = "Y" or sans1 (1) = "y" then
		if sans1 (2) = "E" or sans1 (2) = "e" then
		    if sans1 (3) = "S" or sans1 (3) = "s" then
			sans1 := "yes"
		    end if
		end if
	    end if

	    if sans1 (1) = "O" or sans1 (1) = "o" then
		if sans1 (2) = "K" or sans1 (2) = "k" then
		    sans1 := "ok"
		end if
	    end if

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop

	View.Set ("graphics")                                                                   %thank you

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)
	%again
	loop
	    put "do you want to try again?(yes/ok/no)"
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

    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh

end wordlength                                                                      %end procedure






procedure mathquestions                                                          %procedure math questions
    loop
	var sans2 : string
	setscreen ("graphics:1536;800,nobuttonbar")
	var inum, itime, icounter, ifirst, isecond, ians, iright, ichoose, i : int := 0
	put "which module do you want, enter 0 to exit "                                                     %ask module
	put "1.All Plus             5.Plus + Minus           9.Minus + Divides          13.Plus + Times + Divides"
	put "2.All Minus            6.Plus + Times          10.Times + Divides          14.Minus + Times + Divides"
	put "3.All Times            7.Plus + Divides        11.Plus + Minus + Times     15.Plus + Minus + Times + Divides"
	put "4.All Divides          8.Minus + Times         12.Plus + Minus + Divides"
	get inum

	if inum = 0 then
	    exit
	end if

	if inum = 1 then                                                                    %mod 1

	    put "you choose all plus"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ifirst, 0, 100)
		randint (isecond, 0, 100)
		put ifirst, " + ", isecond, " = " ..
		get ians
		if ians = ifirst + isecond then
		    iright := iright + 1
		    put "true"
		else
		    put "false"
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 2 then                                                                         %mod 2

	    put "you choose all minus"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1

		loop
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)
		    exit when ifirst > isecond
		end loop

		put ifirst, " - ", isecond, " = " ..
		get ians
		if ians = ifirst - isecond then
		    iright := iright + 1
		    put "true"
		else
		    put "false"
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 3 then                                                                                 %mod 3

	    put "you choose all times"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1

		randint (ifirst, 0, 20)
		randint (isecond, 0, 20)

		put ifirst, " * ", isecond, " = " ..
		get ians
		if ians = ifirst * isecond then
		    iright := iright + 1
		    put "true"
		else
		    put "false"
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 4 then                                                                                 %mod 4

	    put "you choose all divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		loop
		    randint (ifirst, 1, 100)
		    randint (isecond, 1, 100)
		    i := ifirst mod isecond
		    exit when i = 0
		end loop
		put ifirst, " / ", isecond, " = " ..
		get ians
		if ians = ifirst / isecond then
		    iright := iright + 1
		    put "true"
		else
		    put "false"
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 5 then                                                                                 %mod 5

	    put "you choose plus and minus"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians
		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			exit when ifirst > isecond
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 6 then                                                                                 %mod 6

	    put "you choose plus and times"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians
		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 7 then                                                                                         %mod 7

	    put "you choose plus and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians
		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 1, 100)
			randint (isecond, 1, 100)
			i := ifirst mod isecond
			exit when i = 0
		    end loop
		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 8 then                                                                                 %mod 8

	    put "you choose times and minus"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			exit when ifirst > isecond
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 9 then                                                                                         %mod 9

	    put "you choose divides and minus"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    loop
			randint (ifirst, 1, 100)
			randint (isecond, 1, 100)
			i := ifirst mod isecond
			exit when i = 0
		    end loop
		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			exit when ifirst > isecond
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 10 then                                                                                 %mod 10

	    put "you choose times and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 1)

		if ichoose = 0 then
		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 1, 100)
			randint (isecond, 1, 100)
			i := ifirst mod isecond
			exit when i = 0
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 11 then                                                                                         %mod 11

	    put "you choose plus, minus, and times"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 2)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians

		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			exit when ifirst > isecond
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 2 then
		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 12 then                                                                                         %mod 12

	    put "you choose plus, minus, and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 2)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians

		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			exit when ifirst > isecond
		    end loop

		    put ifirst, " - ", isecond, " = " ..
		    get ians
		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 2 then
		    loop
			randint (ifirst, 1, 20)
			randint (isecond, 1, 20)
			exit when ifirst mod isecond = 0
		    end loop

		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 13 then                                                                                                 %mod 13

	    put "you choose plus, times, and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 2)

		if ichoose = 0 then
		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians

		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then

		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 2 then
		    loop
			randint (ifirst, 1, 20)
			randint (isecond, 1, 20)
			i := ifirst mod isecond
			exit when i = 0
		    end loop

		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 14 then                                                                                                         %mod 14

	    put "you choose minus, times, and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 2)

		if ichoose = 0 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			i := ifirst mod isecond
			exit when i = 0
		    end loop
		    put ifirst, " - ", isecond, " = " ..
		    get ians

		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then

		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 2 then
		    loop
			randint (ifirst, 1, 20)
			randint (isecond, 1, 20)
			i := ifirst mod isecond
			exit when i = 0
		    end loop

		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	if inum = 15 then                                                                                                                 %mod 15

	    put "you choose plus, minus, times, and divides"
	    put "how many questions do you want?"
	    get itime

	    for questions : 1 .. itime
		icounter := icounter + 1
		randint (ichoose, 0, 3)

		if ichoose = 0 then
		    loop
			randint (ifirst, 0, 100)
			randint (isecond, 0, 100)
			i := ifirst mod isecond
			exit when i = 0
		    end loop
		    put ifirst, " - ", isecond, " = " ..
		    get ians

		    if ians = ifirst - isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 1 then

		    randint (ifirst, 0, 20)
		    randint (isecond, 0, 20)

		    put ifirst, " * ", isecond, " = " ..
		    get ians
		    if ians = ifirst * isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if

		if ichoose = 2 then
		    loop
			randint (ifirst, 1, 20)
			randint (isecond, 1, 20)
			i := ifirst mod isecond
			exit when i = 0
		    end loop

		    put ifirst, " / ", isecond, " = " ..
		    get ians
		    if ians = ifirst / isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
		if ichoose = 3 then

		    randint (ifirst, 0, 100)
		    randint (isecond, 0, 100)

		    put ifirst, " + ", isecond, " = " ..
		    get ians
		    if ians = ifirst + isecond then
			iright := iright + 1
			put "true"
		    else
			put "false"
		    end if
		end if
	    end for

	    if iright = 1 or iright = 0 then
		if itime = 1 or itime = 0 then
		    put "you got ", iright, " right answer of ", itime, " question"
		else
		    put "you got ", iright, " right answer of ", itime, " questions"
		end if
	    else
		put "you got ", iright, " right answers of ", itime, " questions"
	    end if
	end if

	var sans1 : string
	loop                                                                                %continue
	    put "do you want to continue?"
	    get sans1

	    if sans1 (1) = "Y" or sans1 (1) = "y" then
		if sans1 (2) = "E" or sans1 (2) = "e" then
		    if sans1 (3) = "S" or sans1 (3) = "s" then
			sans1 := "yes"
		    end if
		end if
	    end if

	    if sans1 (1) = "O" or sans1 (1) = "o" then
		if sans1 (2) = "K" or sans1 (2) = "k" then
		    sans1 := "ok"
		end if
	    end if

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop


	View.Set ("graphics")                                                                                 %thank you

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)
	%again
	loop
	    put "do you want to try again?(yes/ok/no)"
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

    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh

end mathquestions

procedure teethcount                                                %procedure teethcount
    loop
	var sans1, sans2 : string
	setscreen ("graphics:1024;800,nobuttonbar")
	var count : int

	put "How many teeth do you want? (1-12)"
	get count
	put repeat ("*     ", count), "*"
	put repeat (" *   *", count)
	put repeat ("  * * ", count)
	put repeat ("   *  ", count)

	loop                                                                                %continue
	    put "do you want to continue?"
	    get sans1

	    if sans1 (1) = "Y" or sans1 (1) = "y" then
		if sans1 (2) = "E" or sans1 (2) = "e" then
		    if sans1 (3) = "S" or sans1 (3) = "s" then
			sans1 := "yes"
		    end if
		end if
	    end if

	    if sans1 (1) = "O" or sans1 (1) = "o" then
		if sans1 (2) = "K" or sans1 (2) = "k" then
		    sans1 := "ok"
		end if
	    end if

	    exit when sans1 = "yes" or sans1 = "ok"
	end loop

	View.Set ("graphics")                                                                   %thank you

	Draw.Text ("thank you for using my program!", 200, 400, Font.New ("serif:36"), blue)
	Draw.FillOval (450, 225, 150, 150, yellow)
	Draw.FillOval (350, 235, 10, 10, black)
	Draw.FillOval (550, 235, 10, 10, black)
	Draw.Line (350, 180, 550, 180, black)
	%again
	loop
	    put "do you want to try again?(yes/ok/no)"
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

    setscreen ("graphics:600;400,nobuttonbar")
    GUI.Refresh

end teethcount                                                                 %end procedure



setscreen ("graphics:600;400,nobuttonbar")
var ttbtn : int := GUI.CreateButtonFull (0, maxy - 150, 150, "times table", timetable, 150, '^D', true)               %begin
var ambtn : int := GUI.CreateButtonFull (maxx div 4, maxy - 150, 150, "average mark", averagemark, 150, '^D', true)
var gnbtn : int := GUI.CreateButtonFull (maxx div 2, maxy - 150, 150, "guess number", guessnumber, 150, '^D', true)
var wlbtn : int := GUI.CreateButtonFull (maxx - maxx div 4, maxy - 150, 150, "word's length", wordlength, 150, '^D', true)
var mqbtn : int := GUI.CreateButtonFull (0, maxy - 300, 150, "math questions", mathquestions, 150, '^D', true)
var teethbtn : int := GUI.CreateButtonFull (maxx div 4, maxy - 300, 150, "teeth", teethcount, 150, '^D', true)
var quitbtn : int := GUI.CreateButtonFull (0, 0, maxx, "Stop", GUI.Quit, 50, '^D', true)
loop
    exit when GUI.ProcessEvent
end loop


const mx := 528 div 2                                                                                                   %quit
const my := 400 div 2
setscreen ("graphics:528;400,nobuttonbar")
put "Thank you for using my program!"
Draw.FillOval (mx, my, 150, 150, yellow)
Draw.FillOval (200, my, 10, 10, black)
Draw.FillOval (350, my, 10, 10, black)
Draw.Line (200, 135, 350, 135, black)
