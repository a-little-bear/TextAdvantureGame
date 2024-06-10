%Filename       : 2019-11 Turing

%Program        : Have the user enter a word. Output the word as
%Program        : many times as there are letters in
%Program        : it. EG. input-dog output- dog dog dog

%Outline        : length times of word
%Programmer     : Joseph Siu
%Class          : ICS2O3-01
%Due Date       : 2019-11-20
var ilong : int
var sword : string

put "please enter a word "..
get sword

ilong := length (sword)

for itime : 1 .. ilong
    put sword
end for

put "TYFUMP"
