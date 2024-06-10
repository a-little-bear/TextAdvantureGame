%
%Filename       : 2019-11 Turing
%Program        : 1. Mr. Sze is in a beauty contest. Keep track of each of the 100 scores he receives
%Progarm        : for the contest. Each score is in the range of one to ten. Output the average score.
%Program        : 3+3+ Loop1_1
%Outline        : average score
%Programmer     : Joseph Siu
%Class          : Ics2O3-01
%Due Date       : 2019-11-20
%
var itotal, iscore : int := 0
for itime : 1 .. 100
randint (iscore,1,10)
put iscore : 3 ..
itotal := itotal + iscore
delay (10)
end for
put ""
put "the average score is ", itotal
put "TYFUMP!"
