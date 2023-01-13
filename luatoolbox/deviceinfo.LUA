color.loadpalette()
optioncount = {"a","b","c","d","e","f","g","h","i","j","k","l"} 

buttons.interval(10,10)
while true do
    buttons.read()
	for k,v in ipairs(optioncount) do
    screen.print(1,k*15,"▪",0.5,color.blue)
	end
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
    screen.print(10,15,"Tachyon: "..hw.tachyon(),0.5)
    screen.print(10,30,"Baryon: "..hw.baryon(),0.5)
	screen.print(10,45,"Pommel: "..hw.pommel(),0.5)
	screen.print(10,60,"Kirk: "..hw.kirk(),0.5)
    screen.print(10,75,"Spock: "..hw.spock(),0.5)
	screen.print(10,90,"FuseID: "..hw.fuseid(),0.5)
	screen.print(10,105,"FuseCFG: "..hw.fusecfg(),0.5)
	screen.print(10,120,"Motherboard: "..hw.board(),0.5)
    screen.print(10,135,"Motherboard Gen: "..hw.gen(),0.5)
	screen.print(10,150,"Factory Firmware: "..hw.ofwinitial(),0.5)
	screen.print(10,165,"Model: "..hw.getmodel(),0.5)
	screen.print(10,180,"Current Firmware: "..os.cfw(),0.5)
	screen.print(10,210,"Press SELECT to go back",0.5)

if buttons.select then dofile("script.LUA")
end


screen.flip()
end

