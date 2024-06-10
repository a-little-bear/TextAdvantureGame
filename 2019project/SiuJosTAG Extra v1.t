%
%Filename : Turing
%Program : advanture game
%Outline : save princess
%Programmer : Joseph Siu
%Class : ICS2O3-01
%Due Date : 2019-12-13
%


import GUI


%for the game, ccount should be 1, but if you do not want to wait a long time, you can change it to a huge number
const ccount := 1

%in km %distance
const jungtosword := 5
const jungtobow := 5
const jungtoarrows := 5
const passjungle := 15
const jungandmain := 10
const villandmain := 10
const villandhead := 4
const villandbs := 5
const villandcarp := 3
const prinandmain := 10
const passthorns := 15
const magictower := 10

%if you want to test the game, you can change 0 to 1
var isci, imainans, isword, iexit, iarrows, iend : int := 0

%declear variable
var sstart, swrong, swait : string
var itimes, ivillfirstans, ivillheadans : int
var iminddicision, ivillheadleaveans, ivilltobs : int
var ivillans, ileaveans, ivillbsans, ivillcarpans : int
var ijungleans, iswordchoose, irsword, iarrowsans : int
var iarrowsrand1, iarrowsrand2, iarrowsans1 : int
var ibowrand1, ibowrand2, ibowans, ibow, ibowans1 : int

function yesorno (sans : string) : string %yes or no
    if sans (1) = "Y" or sans (1) = "y" then
	if sans (2) = "E" or sans (2) = "e" then
	    if sans (3) = "S" or sans (3) = "s" then
		result "yes"
	    end if
	end if
    elsif sans (1) = "N" or sans (1) = "n" then
	if sans (2) = "O" or sans (2) = "o" then
	    result "no"
	end if
    else
	result ""
    end if
end yesorno

function wrong_choose : string %wrong choose
    delay (250)
    var swrong_ : array 1 .. 2 of string
    swrong_ (1) := "what are you doing?"
    swrong_ (2) := "you don't know what are you doing, you thinking about yourself, and you lost the game"
    for swf1 : 1 .. 2
	for swf2 : 1 .. length (swrong_ (swf1))
	    put swrong_ (swf1) (swf2) ..
	    delay (25)
	end for
	delay (100)
	put ""
    end for
    result ""
end wrong_choose

function wait_time (itime : int) : string         %wait
    if itime = 1 or itime = 0 then
	put "you need to wait ", itime, " second"
    else
	put "you need to wait ", itime, " seconds"
    end if

    for decreasing icount : itime .. ccount
	put repeat (".", icount) : 30 ..

	if icount = 1 or icount = 0 then
	    put icount, "second"
	else
	    put icount, "seconds"
	end if

	delay (1000)
    end for

    result ""
end wait_time

function leave : string         %ask leave
    loop
	put "do you want to leave?"
	put "1.Yes"
	put "2.No"

	get ileaveans
	exit when ileaveans = 1
    end loop
    result ""
end leave

function jungle : string         %jungle part
    iexit := 0
    put "you are going to the jungle"
    swait := wait_time (jungandmain)
    put swait

    if isci = 0 then         %when test, change "1"
	put "you need a scisser to get in"
	put "you lost in the jungle"
	put ""
	iexit := 1
	result ""
    else
	put "you are passing the jungle"
	swait := wait_time (passjungle)
	put swait

	put "you passed the jungle"

	loop         %jungle ask
	    put "you can go to :"
	    put "1.Sword"
	    put "2.Arrows"
	    put "3.Bow"
	    put "4.Leave"
	    put ""
	    get ijungleans

	    if ijungleans = 1 then         %swrod
		swait := wait_time (jungtosword)
		put swait
		put "you see a sword at the middle of the lake, do you want to get it?"
		put "1.Yes"
		put "2.No"
		get iswordchoose

		if iswordchoose = 1 then
		    randint (irsword, 0, 1)
		    if irsword = 0 then         %alive
			put "you get the sword"
			put "sword + 1"
			isword := 1
		    else         %play again
			put "Oh, you fall in to the lake"
			put "you end your adventure "
			exit
		    end if

		elsif iswordchoose not= 2 then         %wrong
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave
		swait := wait_time (jungtosword)
		put swait
	    end if

	    if ijungleans = 2 then         %arrows
		swait := wait_time (jungtoarrows)
		put swait

		put "a ghost come and say:"
		put "if you want to get the arrows, you must answer a question"
		put "do you want to play?"
		put "1.Yes"
		put "2.No"

		get iarrowsans

		if iarrowsans = 1 then
		    put "question:"
		    randint (iarrowsrand1, 0, 14)
		    randint (iarrowsrand2, 0, 14)
		    put iarrowsrand1, " * ", iarrowsrand2, " = " ..
		    get iarrowsans1

		    if iarrowsans1 = iarrowsrand1 * iarrowsrand2 then
			put "you get the arrows"
			iarrows := 1
		    end if

		elsif iarrowsans not= 2 then
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave
		swait := wait_time (jungtoarrows)
		put swait
	    end if

	    if ijungleans = 3 then         %bow
		swait := wait_time (jungtobow)
		put swait

		put "a ghost come and say:"
		put "if you want to get the arrows, you must answer a question"
		put "do you want to play?"
		put "1.Yes"
		put "2.No"

		get ibowans

		if ibowans = 1 then         %play bow game
		    put "question:"
		    randint (ibowrand1, 50, 100)
		    randint (ibowrand2, 1, 49)
		    put ibowrand1, " - ", ibowrand2, " = " ..
		    get ibowans1

		    if ibowans1 = ibowrand1 - ibowrand2 then
			put "you get the bow"
			put "ibow +1"
			ibow := 1
		    else
			put "you did not get the bow"
		    end if

		elsif ibowans not= 2 then
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave
		swait := wait_time (jungtobow)
		put swait
	    end if

	    if ijungleans = 4 then         %leave
		put leave
		swait := wait_time (passjungle)
		put swait
		exit
	    end if


	end loop
    end if
    result ""
end jungle

function village : string         %village part
    iexit := 0
    put "you are going to the village"

    swait := wait_time (villandmain)
    put swait
    put "you are arriving at village"
    put "for people in this village, you are a stranger"
    put "do you want to go to the village head's house first?"
    put "1.yes"
    put "2.no"

    get ivillfirstans

    %village
    if ivillfirstans = 1 then
	put "it maybe is a good way"
	swait := wait_time (villandhead)
	put swait

	put "you are arriving at village head's house"
	delay (500)

	put "the head is using a friendly look to look at you"
	delay (500)

	put "head: Hi, young man, What can I do for you?"
	put "1.hi. i want to save the princess"
	put "2.sorry, i think i go to the wrong place"
	get ivillheadans

	put ""

	if ivillheadans = 1 then         %%main
	    put "you are so brave, young man, you are the 8888th person that come to our ",
		"village and want to save the princess, but no one can save her"
	    put ""

	    delay (500)
	    put "when you hear this setence, you have a dicision in your mind :"

	    put "1.i can do it, i am the best!"
	    put "2.it is so hard, i want to go home"

	    put ""

	    delay (500)
	    get iminddicision

	    put ""

	    if iminddicision = 1 then
		put "i:head, i am ready to save the princess"

	    elsif iminddicision = 2 then
		put "you end your adventure"
		delay (250)
		iexit := 1
		result ""

	    else
		swrong := wrong_choose
		iexit := 1
		result ""
	    end if

	    put "the head hear your answer, and very admire your brave"
	    put ""
	    put "head: Mr.Sword know where has a magic sword, you can go to ask him, it can cut off the thorns"
	    delay (250)
	    put "i: thank you head"
	    delay (250)

	    loop
		put "do you want to leave?"
		put "1.Yes"
		put "2.No"

		get ivillheadleaveans
		exit when ivillheadleaveans = 1
	    end loop

	elsif ivillheadans = 2 then
	    put leave

	else
	    swrong := wrong_choose
	    iexit := 1
	    result ""
	end if

	swait := wait_time (villandhead)
	put swait


	put "you are arriving at village"
	ivillfirstans := 2
    end if
    %if not see head first
    if ivillfirstans = 2 then
	loop
	    put "who do you want to see"
	    put "1.village head"
	    put "2.blacksmith"
	    put "3.carpenter"
	    put "4.leave"

	    get ivillans

	    if ivillans = 1 then            %head
		put "you are going to the village head's house"

		swait := wait_time (villandhead)
		put swait

		put "you are arriving at village head's house"
		delay (500)

		put "the head doesn't want to see you"

		put leave

		swait := wait_time (villandhead)
		put swait

	    elsif ivillans = 2 then             %blacksmith
		swait := wait_time (villandbs)
		put swait

		put "you see the blacksmith, his name is Mike"
		put "Mike:Hi, young man, why are you here?"
		put "1.Do you know where has a magic sword, that can cut off the thorns"
		put "2.I just find the wrong place"
		put ""
		get ivillbsans

		if ivillbsans = 1 then
		    put "Mike:if you want to get the sword, you must use the scisser to pass the jungle,",
			" you can go to the carpenter's there to get the scisser, i think he has a old one ",
			"and no one is using it, you can take it, and there is also a bow and many arrows, ",
			"if you want it, you must pass some test"
		    put ""
		    put "i: thank you mike"

		elsif ivillbsans not= 1 and ivillbsans not= 2 then
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave

		swait := wait_time (villandbs)
		put swait

	    elsif ivillans = 3 then
		swait := wait_time (villandcarp)
		put swait

		put "carpenter: hi, do you want to buy something?"
		put ""
		put "1.i want to buy something, but i do not have any money"
		put "2.Mike said you have an old scisser, may i borrow it"
		put "3.i think i find the wrong place"

		get ivillcarpans

		if ivillcarpans = 1 then
		    put "carpenter:bye~ see you"
		    put "carpenter kick you out"

		elsif ivillcarpans = 2 then
		    put "oh, you can get it, here you are"
		    put "scissers + 1"
		    isci := 1

		elsif ivillcarpans not= 1 and ivillcarpans not= 2 and ivillcarpans not= 3 then
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave

		swait := wait_time (villandcarp)
		put swait

	    elsif ivillans = 4 then
		put leave
		swait := wait_time (villandmain)
		put swait
		result ""

	    else
		swrong := wrong_choose
		put swrong
		iexit := 1
		result ""
	    end if
	end loop

    else
	swrong := wrong_choose
	put swrong
	iexit := 1
	result ""
    end if
    result ""
end village

%castle part
function castle : string
    iexit := 0

    put "you are going to the castle"

    swait := wait_time (prinandmain)
    put swait

    if isword = 0 then         %when test, change "1"
	put "you need a sword to get in"
	put "you miss in the thorns"
	put ""
	iexit := 1
	result ""
    else
	put "you are passing the thorns"

	swait := wait_time (passthorns)
	put swait

	put "you passed the thorns"

	put "the dragon is coming to eat you"
	delay (500)

	if ibow = 1 and iarrows = 1 then
	    put "you used your bow and arrows to killed the dragon, and your bow broke"
	    put "bow - 1, arrows - 1"
	    ibow := 0
	    iarrows := 0

	    put ""
	    put "the castle's door was locked, you must run to the magiv tower to go to the castle"
	    swait := wait_time (magictower)
	    put swait
	    put "the witch is not here, so you saved the princess"
	    iend := 1
	    result "The End"

	else
	    put "the dragon eat you"
	    iexit := 1
	    result ""
	end if
    end if

    result ""
end castle


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%start start start start start start start start start start start
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var start : array 1 .. 7 of string
start (1) := "One year ago, "
start (2) := "a witch catch the princess to the witch's castle, "
start (3) := "and the witch said to the country if you want to save the princess, "
start (4) := "you must kill me and my dragon."
start (5) := " but until now, "
start (6) := "no one can pass the thorns jungle, "
start (7) := "and you are trying to save the princess."

for putstart1 : 1 .. 7
    for putstart2 : 1 .. length (start (putstart1))
	put start (putstart1) (putstart2) ..
	delay (25)
    end for
    delay (250)
end for

var ifstart : int
ifstart := 1

loop
    %play the game or not
    put ""
    if ifstart = 1 then
	const csa := "Do you want to play the game?(Yes or No)"
	for sc : 1 .. length (csa)
	    put csa (sc) ..
	    delay (25)
	end for
	ifstart := 0
    else
	const csa := "Do you want to play the game again?(Yes or No)"
	for sc : 1 .. length (csa)
	    put csa (sc) ..
	    delay (25)
	end for
    end if

    get sstart
    sstart := yesorno (sstart)

    if sstart = "yes" then
	put ""
	const csy := "Let's start the game!"
	for syc : 1 .. length (csy)
	    put csy (syc) ..
	    delay (25)
	end for

	put ""

	for icount : 1 .. 5
	    delay (500)
	    put "." ..
	end for

	put ""

	delay (500)

	loop         %main choose
	    var mainchoose : array 1 .. 4 of string
	    mainchoose (1) := "you see three place that you can go"
	    mainchoose (2) := "1.village"
	    mainchoose (3) := "2.jungle"
	    mainchoose (4) := "3.thorns"
	    for mc1 : 1 .. 4
		for mc2 : 1 .. length (mainchoose (mc1))
		    put mainchoose (mc1) (mc2) ..
		    delay (25)
		end for
		delay (100)
		put ""
	    end for

	    put ""
	    delay (500)

	    var smainask : string
	    smainask := "please enter the number of the place that you want to go: "
	    for mainask : 1 .. length (smainask)
		put smainask (mainask) ..
		delay (25)
	    end for

	    put ""

	    get imainans


	    %village
	    if imainans = 1 then
		put village

		if iexit = 1 then
		    exit
		end if
	    end if


	    %jungle
	    if imainans = 2 then
		put jungle

		if iexit = 1 then
		    exit
		end if
	    end if

	    %thorns
	    if imainans = 3 then
		put castle

		if iexit = 1 then
		    exit
		end if

		if iend = 1 then
		    exit
		end if
	    end if

	    %wrong
	    if imainans not= 1 and imainans not= 2 and imainans not= 3 then
		swrong := wrong_choose
		put swrong
		exit
	    end if

	end loop

    elsif sstart = "no" then
	exit
    end if
end loop

put "thank you for using my program"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%end end end end end end end end end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function randx : int         %randx
    var ixarray : int
    randint (ixarray, 10, 350)
    result ixarray
end randx

function randy : int         %randy
    var iyarray : int
    randint (iyarray, 235, 475)
    result iyarray
end randy

var font, fontend : int         %font set

font := Font.New ("serif:20")

var iawesome, igood, ifine, iok, inottoogood, ibad : int := 0
%score font procedure
procedure awesome
    cls
    Font.Draw ("thank you for giving me 'awesome'.", randx, randy, font, blue)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    iawesome := iawesome + 1
end awesome

procedure good
    cls
    Font.Draw ("thank you for giving me 'good'.", randx, randy, font, red)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    igood := igood + 1
end good

procedure fine
    cls
    Font.Draw ("thank you for giving me 'fine'.", randx, randy, font, gray)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    ifine := ifine + 1
end fine

procedure ok
    cls
    Font.Draw ("i will trying to be better.", randx, randy, font, purple)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    iok := iok + 1
end ok

procedure nottoogood
    cls
    Font.Draw ("sorry about that, i will make better.", randx, randy, font, brown)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    inottoogood := inottoogood + 1
end nottoogood

procedure bad
    cls
    Font.Draw ("i will make more intersting, sorry.", randx, randy, font, green)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    ibad := ibad + 1
end bad

%GUI
setscreen ("graphics:700,600")
Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)

var ibottum1 : int := GUI.CreateButtonFull (10, 10, 200, "awesome", awesome, 100, "^D", true)
var ibottum2 : int := GUI.CreateButtonFull (maxx div 3, 10, 200, "good", good, 100, "^D", true)
var ibottum3 : int := GUI.CreateButtonFull (maxx div 3 * 2, 10, 200, "fine", fine, 100, "^D", true)
var ibottum4 : int := GUI.CreateButtonFull (10, 125, 200, "ok", ok, 100, "^D", true)
var ibottum5 : int := GUI.CreateButtonFull (maxx div 3, 125, 200, "not too good", nottoogood, 100, "^D", true)
var ibottum6 : int := GUI.CreateButtonFull (maxx div 3 * 2, 125, 200, "bad", bad, 100, "^D", true)
var quit_ : int := GUI.CreateButtonFull (maxx - 200, maxy - 100, 200, "quit", GUI.Quit, 100, "^D", true)

loop
    exit when GUI.ProcessEvent
end loop

cls

var ranxla, ranyla, randnum : int
randint (randnum, 1, 30)
Draw.FillBox (0, 0, maxx, 300, blue)
Draw.FillBox (100, 390, 650, 393, green)
Draw.Text ("thank you for using my program!", 110, 400, Font.New ("serif:30"), blue)
for istar : 1 .. randnum
    randint (ranxla, 0, maxx)
    randint (ranyla, 0, 275)
    Draw.FillStar (ranxla - 50, ranyla - 50, ranxla, ranyla, red)
end for
Draw.FillOval (450, 225, 150, 150, yellow)
Draw.FillOval (350, 235, 10, 10, black)
Draw.FillOval (550, 235, 10, 10, black)
Draw.Line (350, 180, 550, 180, black)
Draw.FillBox (200, 200, 300, 225, yellow)
Draw.FillBox (200, 200, 175, 350, yellow)
Draw.FillOval (175, 370, 10, 20, yellow)
Draw.FillOval (200, 370, 10, 20, yellow)


put "awesome score : ", iawesome
put "good score : ", igood
put "fine score : ", ifine
put "ok score : ", iok
put "not too good score : ", inottoogood
put "bad score : ", ibad










































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
