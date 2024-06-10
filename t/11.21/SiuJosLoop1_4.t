%Filename       : 2019-11 Turing
%Program        : Write a program that announces at each
%Program        : repetition of the loop the number of
%Program        : times it has executed the loop. Have it stop at
%Program        : each execution with the message:
%Program        : 'Type more to continue, type "exit" to quit'
%Outline        : average mark
%Programmer     : Joseph Siu
%Class          : ICS2O3-01
%Due Date       : 2019-11-20

var icounter : int := 0
var sans : string

loop
    icounter := icounter + 1
    put "this is the ", icounter, " loop"
    put "Typr more to continue, type 'exit' to quit"
    get sans
    if sans (1) = "E" or sans (1) = "e" then
	if sans (2) = "X" or sans (2) = "x" then
	    if sans (3) = "I" or sans (3) = "i" then
		if sans (4) = "T" or sans (4) = "t" then
		    sans := "exit"
		end if
	    end if
	end if
    end if
    exit when sans = "exit"
end loop

put "TYFUMP!"
