local citrainput = {}

citrainput.buttontokey = {
	a = 'a',
	b = 's',
	x = 'z',
	y = 'x',
	l = 'q',
	r = 'w',
	left = 'f',
	right = 'h',
	up = 't',
	down = 'g',
	c_left = 'left',
	c_right = 'right',
	c_up = 'up',
	c_down = 'down',
	start = 'm',
	select = 'n'
	
}

citrainput.cal = {}

citrainput.cal.screenx1 = 0
citrainput.cal.screenx2 = 128
citrainput.cal.screeny1 = 0
citrainput.cal.screeny2 = 128
 
citrainput.cal.textboxx = 64
citrainput.cal.textboxy = 64
 
citrainput.cal.okx = 64
citrainput.cal.oky = 64

function citrainput:calibrate()
	
	print('Calibrating...')
	print('Move mouse to top left, and press enter.')
	io.read()
	self.cal.screenx1, self.cal.screeny1 = autogui.position()
	print('Saved values x: ' .. self.cal.screenx1 .. ', y: ' .. self.cal.screeny1)
	
	print('Move mouse to bottom right, and press enter.')
	io.read()
	self.cal.screenx2, self.cal.screeny2 = autogui.position()
	print('Saved values x: ' .. self.cal.screenx2 .. ', y: ' .. self.cal.screeny2)
	
	print('Move mouse to start of keyboard popup textbox.')
	io.read()
	self.cal.textboxx, self.cal.textboxy = autogui.position()
	print('Saved values x: ' .. self.cal.textboxx .. ', y: ' .. self.cal.textboxy)
	
	print('Move mouse to OK button of keyboard popup.')
	io.read()
	self.cal.okx, self.cal.oky = autogui.position()
	print('Saved values x: ' .. self.cal.okx .. ', y: ' .. self.cal.oky)
	
	
	print('Accept these values? (y/n)')
	local accept = string.lower(io.read())
	if(accept ~= '' and accept ~= 'y') then
		self:calibrate()
	end

end

function citrainput:savecalibration()
	dpf.savejson('savedata/calibration.json',self.cal)
end

function citrainput:loadcalibration()
	self.cal = dpf.loadjson('savedata/calibration.json',self.cal)
	

end

--x and y are floats between 0 and 1
function citrainput:touch(x,y)

	autogui.click(
		self.cal.screenx1 + x * (self.cal.screenx2 - self.cal.screenx1), 
		self.cal.screeny1 + y * (self.cal.screeny2 - self.cal.screeny1)
	)

end


function citrainput:textbox(text)
	autogui.click(self.cal.textboxx,self.cal.textboxy)
	
	--THERE SHOULD BE A BETTER SOLUTION!!!
	for i=1,#text do
		os.execute('printf ' .. string.sub(text,i,i) .. '|clip')
		autogui.hotkey('ctrl','v')
		autogui.sleep(0.1)
	end
	
	
	
	--autogui.write(text)
	autogui.click(self.cal.okx,self.cal.oky)
	
end


function citrainput:getposition()
	x, y = autogui.position()
	x = (x - self.cal.screenx1) / (self.cal.screenx2 - self.cal.screenx1)
	y = (y - self.cal.screeny1) / (self.cal.screeny2 - self.cal.screeny1)
	print(x,y)
end

return citrainput