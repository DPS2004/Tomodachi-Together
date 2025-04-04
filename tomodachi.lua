local tomodachi = {}

tomodachi.states = {}
--store all state classes in this table!

-- tap the center of the screen
function tomodachi:center()
	citrainput:touch(0.5,0.5)
end

--press the "ok" button for a generic dialogue box
function tomodachi:ok()
	citrainput:touch(0.75,0.87)
end

-- yes button for yes/no prompts
tomodachi.yes = tomodachi.ok
tomodachi.give = tomodachi.ok

-- press the cancel/clear button
function tomodachi:cancel()
	citrainput:touch(0.25,0.87)
end

-- no button for yes/no prompts
tomodachi.no = tomodachi.cancel
-- clear button for the year/birthday prompt
tomodachi.clear = tomodachi.cancel
-- back button for some prompts
tomodachi.back = tomodachi.cancel

-- press the leave button, usually located in the bottom left
function tomodachi:leave()
	citrainput:touch(0.05,0.95)
end

-- press the save button on the main menu
function tomodachi:save()
	citrainput:touch(0.95,0.95)
end

tomodachi.call = tomodachi.save

-- gift dialogues!!
function tomodachi:song()
	citrainput:touch(0.3,0.3)
end
function tomodachi:gift()
	citrainput:touch(0.63,0.3)
end
function tomodachi:interior()
	citrainput:touch(0.3,0.7)
end
function tomodachi:phrase()
	citrainput:touch(0.63,0.7)
end
function tomodachi:pocketmoney()
	citrainput:touch(0.5,0.9)
end

-- mii accept
function tomodachi:miiyes()
	citrainput:touch(.75,.37)
end
tomodachi.miiaccept = tomodachi.miiyes

-- mii decline
function tomodachi:miino()
	citrainput:touch(.75,.55)
end
tomodachi.miidecline = tomodachi.miino

function tomodachi:catchstart()
	citrainput:touch(.5,.8)
end

return tomodachi