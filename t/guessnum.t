var count : int := 0
var sb : string
var num, guess : int
put "It is between 1 and 9999 inclusive"
loop
    put "Do you want to play? yes or no"
    get sb
    exit when sb = "yes" or sb = "no"
end loop
if sb = "no" then
else
    randint (num, 1, 9999)
    loop
	count := count + 1
	put "please enter a number between 1-9999"
	get guess
	if guess < 1 or guess > 9999 then
	else
	    if guess > num then
		put "it is too high"
	    else
		if guess < num then
		    put "it is too low"
		else
		    if count > 1 then
			put "you got the answer in ", count, " times"
		    else
			put "you got the answer in ", count, " time"
		    end if
		end if
	    end if
	end if
    end loop
end if
put "thank you for using my program!"
