--------------Setup---------------
local commandname = 'tomo'
local commanddescription = 'Hit a common button on the screen'



local command = slashtools.slashCommand(commandname, commanddescription)
local option_text = slashtools.string('button', 'The name of the button to hit. If the button has text, it should match the text on the button.')
option_text:setRequired(true)
command:addOption(option_text)





--------------On Use---------------
local function rfunc(interaction, command, args, user, channel)
    args.button = args.button:lower()
    if tomodachi[args.button] ~= nil then
        if type(tomodachi[args.button]) == "function" then
            tomodachi[args.button](tomodachi)
        end
        interaction:reply('',true)
    else
        interaction:reply('err: no function matching '..args.button,true)
    end
end

return command, rfunc