%
%Filename       : 2019-11-13Turing
%Program        : Ask a user if they are leaving or staying.
%Program        : If they are leaving tell them "good bye".
%Program        : If they are staying tell them that's great.
%Outline        : good bye / that's great
%Programmer     : Joseph Siu
%Class          : ICS203-01
%Due Date       : 2019-11-13
%
var sans : string
put "you are leaving or staying?"
get sans
if sans = "leaving" then
put "good bye"
end if
if sans = "staying" then
put "that's great"
end if
