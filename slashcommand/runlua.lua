--------------Setup---------------
local commandname = 'runlua'
local commanddescription = 'just straight up run some lua. '



local command = slashtools.slashCommand(commandname, commanddescription)
--[[
local option_foobar = slashtools.string('foobar', 'Foo, or Bar?')

option_foobar:addChoice(slashtools.choice('Foo!', 'foo'))
option_foobar:addChoice(slashtools.choice('Bar!', 'bar'))

option_foobar:setRequired(true)

command:addOption(option_foobar)
]]--
local option_code = slashtools.string('code', 'The code')
option_code:setRequired(true)
command:addOption(option_code)



--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
	print(args.code)
	local fn, err = loadstring(args.code)
	if not fn then
		interaction:reply('Error: '..err)
		print(err)
	else
		local status, r = pcall(fn)
		print(r)
		if r then
			interaction:reply('Return: '..tostring(r))
			print('Return: '..tostring(r))
		end
	end		
end

return command, rfunc