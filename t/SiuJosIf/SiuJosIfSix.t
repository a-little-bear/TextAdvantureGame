
%
%Filename : 2019-11-13Turing
%Program : Write a program that has a user enter their IQ.
%Program : If the number is less than 250, output "You're not as smart
%Progtam : as Mr. Sze. If it's greater than 250 output "You must be lying!"
%Outline : how is your IQ with Mr.Sze
%Programmer : Joseph Siu
%Class : ICS203-01
%Due Date : 2019-11-13
%
var iIQ : int
put "please enter your IQ"
get iIQ
if iIQ < 250 then
    put "You're not as smart as Mr.Sze!"
else
    if iIQ = 250 then
	put "you are as smart as Mr.Sze!"
    else
	put "You must be lying!"
    end if
end if
