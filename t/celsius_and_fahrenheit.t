import GUI

procedure celsius_to_fahrenheit

    cls

    var rcelsius, rfahrenheit : real

    put "please enter the temperature in celsius " ..
    get rcelsius

    rfahrenheit := rcelsius * 9 / 5 + 32

    put "the temperature in fahrenheit is ", rfahrenheit :0:2

    put "thank you for using my program"
    
    put "you will leave in 10 seconds"
    
    for decreasing icount : 10 .. 1
    put repeat (". ", icount)
    delay (1000)
    end for
    
    GUI.Refresh
end celsius_to_fahrenheit

procedure fahrenheit_to_celsius

    cls

    var rcelsius, rfahrenheit : real

    put "please enter the temperature in fahrenheit " ..
    get rfahrenheit

    rcelsius := ( rfahrenheit - 32 ) * 5 / 9

    put "the temperature in celsius is ", rcelsius:0:2

    put "thank you for using my program"

    put "you will leave in 10 seconds"
    
    for decreasing icount : 10 .. 1
    put repeat (". ", icount)
    delay (1000)
    end for
    
    GUI.Refresh
end fahrenheit_to_celsius

var ctf : int := GUI.CreateButtonFull (0, 100, maxx div 2, "celsius to fahrenheit",
    celsius_to_fahrenheit, maxy, '^D', true)

var ftc : int := GUI.CreateButtonFull (maxx div 2, 100, maxx div 2, "fahrenheit to celsius",
    fahrenheit_to_celsius, maxy, '^D', true)
    
var quitBtn : int := GUI.CreateButtonFull (0, 0, maxx, "Quit", GUI.Quit,
    100, '^D', true)
loop
    exit when GUI.ProcessEvent
end loop

