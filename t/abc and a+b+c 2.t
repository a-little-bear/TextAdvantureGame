var inum , ians , ia , ib , ic : int
put "please enter a possitive three digits number"
get inum
ia := inum div 100
ib := inum mod 100 div 10
ic := inum mod 100 mod 10
ians := ia + ib + ic
put ians
put "TYFUMP"
