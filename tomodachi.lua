local tomodachi = {}

tomodachi.states = {}
--store all state classes in this table!

--press the "ok" button for a generic dialogue box
function tomodachi:ok()
	citrainput:touch(0.5,0.87)
end

return tomodachi