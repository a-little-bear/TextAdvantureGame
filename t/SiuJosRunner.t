
%Filename       : 2019-11 Turing

%Program        : Have a user enter times (in minutes) that runners took to run the Boston Marathon.
%Program        : Hit -1 when there are no more runner times to input. Output the average time,
%Program        : the slowest time and the fastest time.

%Outline        : average, slowest, fastest time
%Programmer     : Joseph Siu
%Class          : ICS2O3-01
%Due Date       : 2019-11-25

var ifastest : int := maxint
var itime, itotal, icounter, islowest : int := 0
var raverage : real := 0

put "please enter the time(s) in minute"



loop
    get itime
    exit when itime = -1
    icounter := icounter + 1
    itotal := itotal + itime
    if islowest < itime then
	islowest := itime
    end if
    if ifastest > itime then
	ifastest := itime
    end if
end loop

if icounter not= 0 then
    raverage := itotal / icounter
    put "the average time is ", raverage
    put "the slowest time is ", islowest
    put "the fastest time is ", ifastest
end if



put "TYFUMP"
