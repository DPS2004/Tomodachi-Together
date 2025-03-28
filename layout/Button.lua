--Button class

_G['Button'] = class('Button')

function Button:initialize(name,x,y,description)
	self.name = name
	self.x = x
	self.y = y
	self.description = description
end


function Button:press()
	citrainput:touch(self.x,self.y)
end