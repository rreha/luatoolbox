color.loadpalette()
optioncount = {"a","b","c","d","e","f","g","h","i","j"} 
buttons.interval(10,10)

while true do
    buttons.read()
	for k,v in ipairs(optioncount) do
    screen.print(1,k*15,"▪",0.5,color.blue)
	end
	
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
	if batt.exists() == true then
	screen.print(10,15,"Battery: Exists",0.5)
	else
	screen.print(10,15,"Battery: Doesn't exist",0.5)
	end
	
	if batt.charging() == true then
	screen.print(10,30,"Charging: Yes",0.5)
	else
	screen.print(10,30,"Charging: No",0.5)
	end
	
	screen.print(10,45,"Remaining Percentage: " ..batt.lifepercent().. "%",0.5)
	screen.print(10,60,"Remaining Time: "..batt.lifetime().." [hour(s):minute(s)]",0.5)
    screen.print(10,75,"Battery Temperature: "..batt.temp().." °C",0.5)
	screen.print(10,90,"Battery Voltage: "..batt.volt().." V",0.5)
	screen.print(10,105,"Full Capacity: "..batt.fullcap(),0.5)
	screen.print(10,120,"Remaining Capacity: "..batt.remaincap(),0.5)
    screen.print(10,135,"Battery Mode: "..batt.mode(),0.5)
	screen.print(10,150,"Battery Serial: "..batt.serial(),0.5)
	screen.print(10,180,"Press SELECT to go back",0.5)

if buttons.select then dofile("script.LUA")
end


screen.flip()
end

