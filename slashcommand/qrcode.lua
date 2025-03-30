--------------Setup---------------
local commandname = 'qrcode'
local commanddescription = 'Set the camera view to an attatched image.'



local command = slashtools.slashCommand(commandname, commanddescription)
local option_url = slashtools.string('url', 'A URL to the image.')
option_url:setRequired(true)
command:addOption(option_url)





--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
	local url = string.gsub(args.url,'format=webp','format=png')
	os.execute('curl "' .. url .. '" -o savedata/camera.png')
	interaction:reply('done',true)
end

return command, rfunc