const pi := 3.1415926535897
var radius : int
loop
    put "please enter the radius of circle in integer (bigger than 29)"
    get radius
    if radius < 30 then
    else
	View.Set ("graphics")
	Draw.Line (500, 250, 500 + radius, 250, blue)
	Draw.Oval (512, 262, 7, 7, brown)
	Draw.FillOval (500, 250, 5, 5, red)
	Draw.Oval (500, 250, radius, radius, brown)
	put "The area is ", pi * radius ** 2
	put "The perimeter is ", 2 * pi * radius
	put "The diameter is ", 2 * radius
    end if
end loop
