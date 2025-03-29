-- Note: Luvit requires global variables to be declared explicitly, like as follows:
-- _G['autogui'] = require('libs/autogui')
-- it is very annoying.
print('hiii')
-- import libraries
_G['autogui'] = require('libs/autogui')
_G['class'] = require('libs/middleclass/middleclass')
_G["json"] = require('libs/json')
_G["fs"] = require('fs')
_G["dpf"] = require('libs/dpf')

_G['citrainput'] = require('citrainput')
_G['tomodachi'] = require('tomodachi')



_G["discordia"] = require('discordia')
--_G["dcomponents"] = require("discordia-components")
_G["discordiaslash"] = require("discordia-slash")
_G["slashtools"] = discordiaslash.util.tools()

_G["client"] = discordia.Client()
client:useApplicationCommands()

_G["privatestuff"] = require('privatestuff')

_G["inspect"] = require('libs/inspect')

-- load all the extensions
discordia.extensions()


client:on("ready",function()
	_G["settings"] = dpf.loadjson("savedata/settings.json",{})
	_G["webhooks"] = dpf.loadjson("savedata/webhooks.json",{})
	dofile('slashsetup.lua')()
end)



--calibrate touchscreen
--citrainput:calibrate()
--citrainput:loadcalibration()

--repl (for testing!!!!!)

--_G['dps_repl'] = require('dps_repl')
--dps_repl:run()


--[[
autogui.write("hello!, 안녕 こんにちは")
autogui.sleep(0.1)
autogui.hotkey('ctrl', 'a') -- select all
autogui.hotkey('ctrl', 'x') -- cut
]]--

citrainput:loadcalibration()
client:run(privatestuff.botid)
