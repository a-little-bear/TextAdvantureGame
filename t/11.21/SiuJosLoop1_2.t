%
%Filename       : 2019-11 Turing
%Program        : Write a program that reads words entered one to a line. Keep track of how many
%Progarm        : words are entered. When the user enters 'exit' stop the program and tell the user
%Progarm        : how many words were entered. 3+3+ Loop1_2
%Outline        : how many word
%Programmer     : Joseph Siu
%Class          : Ics2O3-01
%Due Date       : 2019-11-20
%
var sward : string
var icount : int := 0

loop
    icount := icount + 1
    put "please enter a word, type 'exit' to exit"
    get sward
    if sward (1) = "E" or sward (1) = "e" then
	if sward (2) = "X" or sward (2) = "x" then
	    if sward (3) = "I" or sward (3) = "i" then
		if sward (4) = "T" or sward (4) = "t" then
		    sward := "exit"
		end if
	    end if
	end if
    end if
    exit when sward = "exit"
end loop

if icount = 1 then
    put "you enterd ", icount, " word"
else
    put "you enterd ", icount, " words"
end if

put "TYFUMP"
