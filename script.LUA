---@diagnostic disable: undefined-global
color.loadpalette()
option,y = 1,15
buttons.interval(10,10)
while true do
    buttons.read()
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
    screen.print(10,15,"Device Info",0.5)
    screen.print(10,30,"Battery Info",0.5)
	screen.print(10,45,"Button Test",0.5)
	screen.print(10,60,"Screen Test",0.5)
	screen.print(10,75,"Audio Test",0.5)
    screen.print(10,90,"UMD Test",0.5)
	screen.print(10,105,"Ad-Hoc Test",0.5)
	screen.print(10,120,"WLAN Test",0.5)
	screen.print(10,135,"IR Test (1000 Only)",0.5)
	screen.print(10,150,"Shutdown the device",0.5)
    screen.print(10,165,"Return to XMB",0.5)
    screen.print(1,y,"▶",0.5,color.blue)

-- option stuff
if buttons.down then
    option += 1
    y += 15
elseif buttons.up then
    option -= 1
    y -= 15
end

if option < 1 then
    option,y = 11,165
end

if option > 11 then
    option,y = 1,15
end

if buttons.cross then
    if option == 1 then dofile("luatoolbox/deviceinfo.LUA")
    elseif option == 2 then dofile("luatoolbox/batteryinfo.LUA")
    elseif option == 3 then dofile("luatoolbox/buttontest.LUA")
	elseif option == 4 then dofile("luatoolbox/screentest.LUA")
	elseif option == 5 then dofile("luatoolbox/audiotest.LUA")
	elseif option == 6 then dofile("luatoolbox/umdtest.LUA")
	elseif option == 7 then dofile("luatoolbox/adhoctest.LUA")
	elseif option == 8 then dofile("luatoolbox/wlantest.LUA")
	elseif option == 9 then dofile("luatoolbox/irtest.LUA")
	elseif option == 10 then power.off()
    elseif option == 11 then os.exit()
    end
end


screen.flip()
end

