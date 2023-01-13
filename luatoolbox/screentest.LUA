color.loadpalette()
buttons.interval(10,10)

while true do
    buttons.read()
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
	
	screen.print(10,15,"Press START to show red, green, blue, white and black screens to indicate stuck pixels",0.5)
	screen.print(10,30,"Press ╳ to scroll through colors",0.5)
	screen.print(10,45,"Press Left and Right Trigger to flash red, green, and blue screens to fix stuck pixels",0.5)
	screen.print(10,60,"PLEASE LOOK AWAY FROM THE SCREEN FOR A MINUTE IF YOU SUFFER FROM EPILEPSY!!! ",0.5,color.red)
	screen.print(10,180,"Press SELECT to go back",0.5)
	screen.flip()

if buttons.start then
	screen.clear(color.red)
	screen.flip()
	buttons.waitforkey(__CROSS)
	screen.clear(color.green)
	screen.flip()
	buttons.waitforkey(__CROSS)
	screen.clear(color.blue)
	screen.flip()
	buttons.waitforkey(__CROSS)
	screen.clear(color.white)
	screen.flip()
	buttons.waitforkey(__CROSS)
	screen.clear(color.black)
	screen.flip()
	buttons.waitforkey(__CROSS)
end

if buttons.select then dofile("script.LUA")
end

if buttons.held.l and buttons.held.r then
count = timer.new()
timer.start(count)
	repeat
	screen.clear(color.red)
	screen.flip()
	os.delay(100)
	screen.clear(color.green)
	screen.flip()
	os.delay(100)
	screen.clear(color.blue)
	screen.flip()
	os.delay(100)
	until ( timer.time(count) >= 60000 )
end 
end
