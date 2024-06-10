%
%Filename       : 2019-11-13Turing
%Program        : Have a user enter their age.
%Program        : Output what category of movie ticket they should buy.
%Program        : 0- 12 child, 13-19 young adult 20-65 adult, over 65 senior.
%Outline        : the age level : child, young adult, adult, senior.
%Programmer     : Joseph Siu
%Class          : ICS203-01
%Due Date       : 2019-11-13
%
var iname : int
put "please enter your age"
get iname
if iname > -1 then
    if iname < 13 then
	put "child"
    else
	if iname < 20 then
	    put "young adult"
	else
	    if iname < 66 then
		put "adult"
	    else
		put "senior"
	    end if
	end if
    end if
end if
put "TYFUMP"

