color.loadpalette()
--buttons.interval(10,10)
umdinfo = umd.info()
while true do
    buttons.read()
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
	screen.print(10,15,"Please make sure that you have a UMD disc on the disc tray, otherwise this won't work!!",0.5)
	screen.print(10,30,"Press ╳ to start testing.",0.5)
	screen.print(10,60,"Press SELECT to go back",0.5)
	screen.flip()
if buttons.cross then
	umd.init()
	if umd.present() and umd.init() == true then
		screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
		screen.print(10,15,"UMD Title: ",0.5)
		screen.print(10,30,"UMD Region: ",0.5)
		screen.print(10,45,"UMD GameID: "..umd.gameid(),0.5)
		screen.print(10,60,"UMD Type: "..umd.type(),0.5)
		screen.print(10,75,"Minimum FW to launch: ",0.5)
		screen.print(10,105,"Press SELECT to go back",0.5)
		screen.flip()
		buttons.waitforkey(__SELECT)
		end
	end
if buttons.select then dofile("script.LUA")
end
end


