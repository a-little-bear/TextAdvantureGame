var inum : int
loop
       put "please enter a number between -32767 and 32767"
       get inum
    if inum <= 0 then
       if inum = 0 then
	   put "this number is not a negetive number and a possitive number"
       else
	   put "this number is a negetive number"
       end if
    else
       put "this number is a possitive number"
    end if
end loop
