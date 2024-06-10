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

%if you want to test the game, you can change 0 to 1
var isci, imainans, isword, iexit, iarrows, iend : int := 0

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

function wait_time (itime : int) : string        %wait
    var swtime : array 1 .. 3 of string
    if itime = 1 or itime = 0 then
	swtime (1) := "you need to wait "
	swtime (3) := " second"
    else
	swtime (1) := "you need to wait "
	swtime (3) := " seconds"
    end if

    for waittimew1 : 1 .. 3
	if waittimew1 = 1 then
	    for waittimew2 : 1 .. length (swtime (waittimew1))
		put swtime (waittimew1) (waittimew2) ..
		delay (25)
	    end for
	end if
	if waittimew1 = 2 then
	    put itime ..
	end if
	if waittimew1 = 3 then
	    for waittimew3 : 1 .. length (swtime (waittimew1))
		put swtime (waittimew1) (waittimew3) ..
		delay (25)
	    end for
	end if
    end for
    put ""

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

function leave : string             %ask leave
    loop
	var sleave : string
	sleave := "do you want to leave? 1.Yes 2.No"
	for leavew : 1 .. length (sleave)
	    if sleave (leavew) = "1" or sleave (leavew) = "2" then
		put ""
	    end if
	    put sleave (leavew) ..
	    delay (25)
	end for
	put ""

	get ileaveans
	exit when ileaveans = 1
    end loop
    result ""
end leave

function jungle : string             %jungle part
    iexit := 0
    var sgojung : string
    sgojung := "you are going to the jungle"
    for gojung : 1 .. length (sgojung)
	put sgojung (gojung) ..
	delay (25)
    end for
    put ""

    swait := wait_time (jungandmain)
    put swait

    if isci = 0 then             %when test, change "1"
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

	loop             %jungle ask
	    var sjungask : string
	    sjungask := "you can go to : 1.Sword 2.Arrows 3.Bow 4.Leave"
	    for jungask : 1 .. length (sjungask)
		if sjungask (jungask) = "1" or sjungask (jungask) = "2" or sjungask (jungask) = "3" or sjungask (jungask) = "4" then
		    put ""
		end if
		put sjungask (jungask) ..
		delay (25)
	    end for
	    put ""
	    get ijungleans

	    if ijungleans = 1 then             %sword
		swait := wait_time (jungtosword)
		put swait

		var ssword : array 1 .. 3 of string
		ssword (1) := "you see a sword at the middle of the lake, do you want to get it?"
		ssword (2) := "1.Yes"
		ssword (3) := "2.No"
		for sword1 : 1 .. 3
		    for sword2 : 1 .. length (ssword (sword1))
			put ssword (sword1) (sword2) ..
			delay (25)
		    end for
		    delay (100)
		    put ""
		end for


		get iswordchoose

		if iswordchoose = 1 then
		    randint (irsword, 0, 1)
		    if irsword = 0 then             %alive
			put "you get the sword"
			put "sword + 1"
			isword := 1
		    else             %play again
			put "Oh, you fall in to the lake"
			put "you end your adventure "
			exit
		    end if

		elsif iswordchoose not= 2 then             %wrong
		    swrong := wrong_choose
		    put swrong
		    iexit := 1
		    result ""
		end if

		put leave
		swait := wait_time (jungtosword)
		put swait
	    end if

	    if ijungleans = 2 then             %arrows
		swait := wait_time (jungtoarrows)
		put swait

		var sarrows : array 1 .. 5 of string
		sarrows (1) := "a ghost come and say:"
		sarrows (2) := "if you want to get the arrows, you must answer a question"
		sarrows (3) := "do you want to play?"
		sarrows (4) := "1.Yes"
		sarrows (5) := "2.No"
		for arrows1 : 1 .. 5
		    for arrows2 : 1 .. length (sarrows (arrows1))
			put sarrows (arrows1) (arrows2) ..
			delay (25)
		    end for
		    delay (100)
		    put ""
		end for


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

	    if ijungleans = 3 then             %bow
		swait := wait_time (jungtobow)
		put swait

		var sbow : array 1 .. 5 of string
		sbow (1) := "a ghost come and say:"
		sbow (2) := "if you want to get the bow, you must answer a question"
		sbow (3) := "do you want to play?"
		sbow (4) := "1.Yes"
		sbow (5) := "2.No"
		for boww1 : 1 .. 5
		    for boww2 : 1 .. length (sbow (boww1))
			put sbow (boww1) (boww2) ..
			delay (25)
		    end for
		    delay (100)
		    put ""
		end for


		get ibowans

		if ibowans = 1 then             %play bow game
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

	    if ijungleans = 4 then             %leave
		put leave
		swait := wait_time (passjungle)
		put swait
		exit
	    end if


	end loop
    end if
    result ""
end jungle

function village : string             %village part
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

	if ivillheadans = 1 then             %%main
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

	    if ivillans = 1 then             %head
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

    if isword = 0 then             %when test, change "1"
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

	loop             %main choose
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
function randx : int             %randx
    var ixarray : int
    randint (ixarray, 10, 350)
    result ixarray
end randx

function randy : int             %randy
    var iyarray : int
    randint (iyarray, 235, 475)
    result iyarray
end randy

var font, fontend : int             %font set

font := Font.New ("serif:20")

var iawesome, igood, ifine, iok, inottoogood, ibad : int := 0
%score font procedure
procedure awesome
    cls
    Font.Draw ("AWESOME!", randx, randy, font, blue)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    iawesome := iawesome + 1
end awesome

procedure good
    cls
    Font.Draw ("GOOD!", randx, randy, font, red)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    igood := igood + 1
end good

procedure fine
    cls
    Font.Draw ("FINE~", randx, randy, font, gray)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    ifine := ifine + 1
end fine

procedure ok
    cls
    Font.Draw ("OK", randx, randy, font, purple)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    iok := iok + 1
end ok

procedure nottoogood
    cls
    Font.Draw ("NOT TOO GOOD", randx, randy, font, brown)
    %delay (3000)
    GUI.Refresh
    Font.Draw ("please give my game a score", 75, maxy - 50, font, brown)
    inottoogood := inottoogood + 1
end nottoogood

procedure bad
    cls
    Font.Draw ("BAD", randx, randy, font, green)
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
Draw.FillBox (0, 0, maxx, 300, brightblue)
Draw.FillBox (100, 390, 650, 393, green)
Draw.Text ("thank you for using my program!", 110, 400, Font.New ("serif:30"), blue)

for istar : 1 .. randnum
    randint (ranxla, 0, maxx)
    randint (ranyla, 0, 275)
    Draw.FillStar (ranxla - 50, ranyla - 50, ranxla, ranyla, brown)
end for

for imapleleaf : 1 .. randnum
    randint (ranxla, 0, maxx)
    randint (ranyla, 0, 275)
    Draw.FillMapleLeaf (ranxla - 50, ranyla - 50, ranxla, ranyla, brightred)
end for

Draw.FillOval (450, 225, 150, 150, yellow)
Draw.FillOval (350, 235, 10, 10, black)
Draw.FillOval (550, 235, 10, 10, black)
Draw.Line (350, 180, 550, 180, black)

Draw.FillBox (200, 200, 300, 225, yellow)
Draw.FillBox (200, 200, 175, 350, yellow)
Draw.FillOval (175, 370, 10, 20, yellow)
Draw.FillOval (200, 370, 10, 20, yellow)

Draw.DashedLine (100, 391, 650, 391, drawSolid, brightred)
Draw.DashedLine (100, 392, 650, 392, drawDash, brightred)
Draw.DashedLine (100, 393, 650, 393, drawDot, brightred)
Draw.DashedLine (100, 394, 650, 394, drawDashDot, brightred)
Draw.DashedLine (100, 395, 650, 395, drawDashDotDot, brightred)

put "awesome score : ", iawesome
put "good score : ", igood
put "fine score : ", ifine
put "ok score : ", iok
put "not too good score : ", inottoogood
put "bad score : ", ibad

put ""

var chars : array char of boolean
put "press Esc to leave"

loop
    Input.KeyDown (chars)
    
    if chars (KEY_ESC) then
	put "you exit the program"
	exit
    end if
end loop

put "TYFUMP"
