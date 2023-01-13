color.loadpalette()

buttons.interval(10,10)
while true do
    buttons.read()
	screen.print(10,15,"Press SELECT to activate",0.5)
if buttons.select then
ir.init()
screen.flip()
screen.print(10,30,"ir.init() success, press x",0.5)
buttons.waitforkey(__CROSS)
ir.baud(9600)
screen.print(10,15,"ir.baud(9600) success, press x",0.5)
buttons.waitforkey(__CROSS)
end
screen.flip()
end

