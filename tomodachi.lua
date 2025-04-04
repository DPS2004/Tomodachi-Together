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

-- enter button on apartment screen, bottom middle of screen
function tomodachi:enter()
	citrainput:touch(.5,.95)
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

-- give mii items button, top left of screen
function tomodachi:givemii()
	citrainput:touch(.1,.1)
end

-- change mii's clothes button
function tomodachi:clothes()
	citrainput:touch(.1,.2)
end

-- options when speaking to a mii
function tomodachi:mii1()
	citrainput:touch(.75,.37)
end
tomodachi.miiaccept = tomodachi.mii1
tomodachi.miiyes = tomodachi.mii1
function tomodachi:mii2()
	citrainput:touch(.75,.55)
end
tomodachi.miidecline = tomodachi.mii2
tomodachi.miino = tomodachi.mii2
function tomodachi:mii3()
	citrainput:touch(.75,.69)
end
function tomodachi:mii4()
	citrainput:touch(.75,.80)
end

-- option up and down for how many things you are selling
function tomodachi:valueup()
	citrainput:touch(.20,.35)
end
function tomodachi:valuedown()
	citrainput:touch(.20,.55)
end

-- just the start button when playing catch because that game is awesome and deserves its own command
function tomodachi:catchstart()
	citrainput:touch(.5,.8)
end

-- answer buttons for quizzes. quiz2 copies the center func as it's the same
function tomodachi:quiz1()
	citrainput:touch(.5,.25)
end
tomodachi.quiz2 = tomodachi.center
function tomodachi:quiz3()
	citrainput:touch(.5,.75)
end
function tomodachi:qtrue()
	citrainput:touch(.75,.50)
end
function tomodachi:qfalse()
	citrainput:touch(.25,.50)
end

-- tomodachi quest buttons
function tomodachi:quest1()
	citrainput:touch(.25,.40)
end
function tomodachi:quest2()
	citrainput:touch(.6,.40)
end

-- prizes after winning a game
function tomodachi:prizesmall()
	citrainput:touch(.25,.75)
end
function tomodachi:prizemid()
	citrainput:touch(.5,.75)
end
function tomodachi:prizebig()
	citrainput:touch(.8,.75)
end

return tomodachi
