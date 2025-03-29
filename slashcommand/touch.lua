--------------Setup---------------
local commandname = 'touch'
local commanddescription = 'Send a touch input'



local command = slashtools.slashCommand(commandname, commanddescription)
local option_x = slashtools.number('x', 'X coordinate, from 0 to 1')
option_x:setRequired(true)
option_x:setMinValue(0)
option_x:setMaxValue(1)
command:addOption(option_x)
local option_y = slashtools.number('y', 'Y coordinate, from 0 to 1')
option_y:setRequired(true)
option_y:setMinValue(0)
option_y:setMaxValue(1)
command:addOption(option_y)




--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
	citrainput:touch(args.x,args.y)
	interaction:reply('done',true)
end

return command, rfunc