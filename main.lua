-- Note: Luvit requires global variables to be declared explicitly, like as follows:
-- _G['autogui'] = require('libs/autogui')
-- it is very annoying.

-- import libraries
_G['autogui'] = require('libs/autogui')
_G['class'] = require('libs/middleclass/middleclass')
_G["json"] = require('libs/json')
_G["fs"] = require('fs')
_G["dpf"] = require('libs/dpf')

_G['citrainput'] = require('citrainput')
_G['tomodachi'] = require('tomodachi')




--calibrate touchscreen
--citrainput:calibrate()
citrainput:loadcalibration()

--repl (for testing!!!!!)

_G['dps_repl'] = require('dps_repl')
dps_repl:run()


--[[
autogui.write("hello!, 안녕 こんにちは")
autogui.sleep(0.1)
autogui.hotkey('ctrl', 'a') -- select all
autogui.hotkey('ctrl', 'x') -- cut
]]--