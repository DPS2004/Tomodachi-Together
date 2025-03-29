--------------Setup---------------
local commandname = 'drag'
local commanddescription = 'Send a drag input'



local command = slashtools.slashCommand(commandname, commanddescription)
local option_x1 = slashtools.number('x1', 'X coordinate, from 0 to 1')
option_x1:setRequired(true)
option_x1:setMinValue(0)
option_x1:setMaxValue(1)
command:addOption(option_x1)
local option_y1 = slashtools.number('y1', 'Y coordinate, from 0 to 1')
option_y1:setRequired(true)
option_y1:setMinValue(0)
option_y1:setMaxValue(1)
command:addOption(option_y1)
local option_x2 = slashtools.number('x2', 'X coordinate, from 0 to 1')
option_x2:setRequired(true)
option_x2:setMinValue(0)
option_x2:setMaxValue(1)
command:addOption(option_x2)
local option_y2 = slashtools.number('y2', 'Y coordinate, from 0 to 1')
option_y2:setRequired(true)
option_y2:setMinValue(0)
option_y2:setMaxValue(1)
command:addOption(option_y2)
local option_time = slashtools.number('time', 'time, in seconds, from 0 to 10')
option_time:setRequired(false)
option_time:setMinValue(0)
option_time:setMaxValue(10)
command:addOption(option_time)




--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
	print(args.x1,args.y1,args.x2,args.y2,args.time)
	print(type(args.x1),type(args.y1),type(args.x2),type(args.y2),type(args.time))
	citrainput:drag(args.x1,args.y1,args.x2,args.y2,args.time)
	interaction:reply('done',true)
end

return command, rfunc