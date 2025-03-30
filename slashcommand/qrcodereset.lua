--------------Setup---------------
local commandname = 'qrcodereset'
local commanddescription = 'Reset the camera to a black screen.'



local command = slashtools.slashCommand(commandname, commanddescription)





--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)

	os.execute('rm savedata/camera.png')
	os.execute('cp savedata/blank.png savedata/camera.png')
	
	interaction:reply('done',true)
end

return command, rfunc