%Filename       : 2019-11 Turing

%Program        : A series of marks is to be entered and averaged. 
%Program        : After the marks Before you enter the series you
%Program        : are to have the program ask how many marks there 
%Program        : are in the series. are entered, output the average. 

%Outline        : average mark
%Programmer     : Joseph Siu
%Class          : ICS2O3-01
%Due Date       : 2019-11-20
var itimes, itotal, imark : int := 0
var raverage : real

put "how many mark(s) do you want to enter?"
get itimes

for totalmark : 1 .. itimes
    put "mark ", totalmark, " : "..
    get imark
    itotal := itotal + imark
end for

raverage := itotal / itimes

put "the average mark is ", raverage
put "TYFUMP!"
