var count : int
loop
    put "How many teeth do you want? (1-12)"
    get count
    put repeat ("*     ", count), "*"
    put repeat (" *   *", count)
    put repeat ("  * * ", count)
    put repeat ("   *  ", count)
end loop
