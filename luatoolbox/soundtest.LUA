color.loadpalette()
buttons.interval(10,10)

while true do
    buttons.read()
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
	
	screen.print(10,15,"Press START to test speakers/headphones",0.5)
	screen.print(10,45,"Press SELECT to go back",0.5)
	screen.flip()

if buttons.start then
screen.flip()
count = timer.new()
song = sound.load(sound.mp3)
timer.start(count)
sound.play(song, 4)
screen.print(0,15,"LEFT",0.5)
	if timer.time(count) == 5000 then
	screen.flip()
	sound.stop
	sound.play(song, 5)
	screen.print(0,257,"RIGHT",0.5)
		if timer.time(count) == 10000 then
			screen.flip()
			sound.stop
			sound.play(song, 2)
			screen.print(0,136.5,"CENTER",0.5)
		end
	end
end

if buttons.select then dofile("script.LUA")
end

end
