%
%Filename       : 2019-11-13Turing
%Program        : Have a user enter their grade on a test.
%Program        : Output if they have passed or failed the test.
%Outline        : failed / passed
%Programmer     : Joseph SIu
%Class          : ICS203-01
%Due Date       : 2019-11-13
%
var rmark : real
put "please enter the mark"
get rmark
if rmark < 80 then
    put "failed"
else
    put "passed"
end if

