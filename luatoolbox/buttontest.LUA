color.loadpalette()
buttons.interval(10,10)
while true do
    buttons.read()
    screen.print(10,0,"luatoolbox v0 (pre-alpha)",0.5,color.blue)
    screen.print(10,15,"Press to any button! Hold SELECT and L to go back",0.5)
	screen.print(10,30,"Analog X: "..buttons.analogx.." Y: "..buttons.analogy,0.5)

if buttons.held.cross then
	screen.print(10,45,"You pressed ╳\n",0.5)
elseif buttons.held.square then
	screen.print(10,45,"You pressed □\n",0.5)
elseif buttons.held.triangle then
	screen.print(10,45,"You pressed △\n",0.5)
elseif buttons.held.circle then
	screen.print(10,45,"You pressed ○\n",0.5)
elseif buttons.held.up then
	screen.print(10,45,"You pressed Up D-PAD\n",0.5)
elseif buttons.held.down then
	screen.print(10,45,"You pressed Down D-PAD\n",0.5)
elseif buttons.held.right then
	screen.print(10,45,"You pressed Right D-PAD\n",0.5)
elseif buttons.held.left then
	screen.print(10,45,"You pressed Left D-PAD\n",0.5)
elseif buttons.held.start then
	screen.print(10,45,"You pressed START\n",0.5)
elseif buttons.held.select then
	screen.print(10,45,"You pressed SELECT\n",0.5)
elseif buttons.held.l then
	screen.print(10,45,"You pressed Left Trigger\n",0.5)
elseif buttons.held.r then
	screen.print(10,45,"You pressed Right Trigger\n",0.5)
end

if buttons.held.select and buttons.held.l then dofile("script.LUA")
end

screen.flip()
end