--------------Setup---------------
local commandname = 'type'
local commanddescription = 'Send a text input'



local command = slashtools.slashCommand(commandname, commanddescription)
local option_text = slashtools.string('text', 'The text')
option_text:setRequired(true)
command:addOption(option_text)





--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
	citrainput:textbox(args.text)
	interaction:reply('done',true)
end

return command, rfunc