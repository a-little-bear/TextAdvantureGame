var ibm , ipb , iaw , inb : int
put "please enter your bank account number, previous balance, and the amount"
put "that amount that you want to deposit or mmithdraw."
get ibm , ipb , iaw
inb := ipb + iaw
if inb = 1 or inb = 0 then
    put ibm , " has " , inb , " dollar."
    put "TYFUMP"
else
    put ibm , " has " , inb , " dollars."
    put "TYFUMP"
end if
