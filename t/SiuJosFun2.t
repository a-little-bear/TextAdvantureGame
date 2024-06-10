var inum, itotal : int := 0

put "please enter 5 number"

for icounter : 1 .. 5
    get inum
    itotal := itotal + inum
end for

put "the total of these five numbers is ", itotal
put "TYFUMP"
