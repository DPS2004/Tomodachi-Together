local dps_repl = {}

function dps_repl:run()

	while true do
		local input = io.read()
		
		local fn, err = loadstring(input)
		if not fn then
			print(err)
		else
			local status, r = pcall(fn)
			if r then print('RETURN: ' ..r) end
		end		
	end

end


return dps_repl